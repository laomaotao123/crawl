#-*- coding:utf-8 -*-
'''
代理地址IP获取及相关处理 防反爬
Created on 2017年10月19日

@author: Administrator
'''

import requests
from db_config import Mysql_package
import html_content 
import pub_function

#从代理网站爬取IP入库
def insert_proxy_xicidaili():
    _url='http://www.xicidaili.com/nn/'  #国内高匿代理IP
    _Mysql_package = Mysql_package()
    _html = html_content.get_html_randomcond(_url,{'0',{}})
    #获取总页数
    _pageallnum = 0
    _reg = r'<div class="pagination"><span class="previous_page disabled">.*?...</span> <a href="/nn/.*?">(.*?)</a>'
    _find = pub_function.get_html_reg(_reg, _html)
    if len(_find)>0:
        _pageallnum = int(_find[0])
    else:
        _pageallnum =500
            
    #取网页中IP，端口数据
    _reg = r'<td>(.*?)</td>'   
    for _pageno in range(1,_pageallnum+1):
        _html = html_content.get_html_randomcond(_url+str(_pageno),{'0',{}})
        #获取网站IP，端口
        _proxy_ip_str = ''
        _soup = html_content.get_BeautifulSoup(_html)
        _content_div = _soup.find_all('tr', class_={"","odd"})
        for _content in _content_div:
            _list_ip = pub_function.get_html_reg(_reg,str(_content))
            if len(_list_ip)>=3:
                _proxy_kind = _list_ip[2] 
                _proxy_ip = _list_ip[0]
                _proxy_port = _list_ip[1]
                #验证是否可用
                _proxy_addr = {}
                _proxy_addr[_list_ip[2]] = "%s:%s" % (_list_ip[0],_list_ip[1])
                _ret = check_proxy_valid(_proxy_addr) #不可用返回Flase
                if _ret == False:
                    continue
                
                #插入表中 parm_proxy_ip
                _sql="insert into parm_proxy_ip(proxy_kind,proxy_ip,proxy_port,errorflag,url) \
                      select '%s','%s','%s','%s','%s' \
                      from dual \
                      where not exists(select 1 from  parm_proxy_ip where proxy_kind='%s' and proxy_ip='%s' and proxy_port='%s');"  \
                      % (_proxy_kind,_proxy_ip,_proxy_port,'0',_url,_proxy_kind,_proxy_ip,_proxy_port)
                    
                _proxy_ip_str = _proxy_ip_str + _sql 
                
        #每页提交一次
        if _proxy_ip_str != '':
            _Mysql_package.update_or_insert(_proxy_ip_str)
            

#检查代理IP是否能用      
def check_proxy_valid(_dict):
    try:
        requests.get('https://www.baidu.com', proxies=_dict)
        #res = requests.get('https://www.baidu.com', proxies=_dict)
        #print(res.status_code)
    except:
        return False
    else:
        return True
    
if __name__ =="__main__":
    print(insert_proxy_xicidaili())