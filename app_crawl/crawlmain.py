#-*- coding:utf-8 -*-
'''
主程序 爬虫开始入口    
Created on 2017年10月12日 

@author: Administrator
'''
from db_config import Mysql_package
import pub_function 
import html_content 
import create_sqltext 
import random
import time
import  os 

 
#爬虫开始入口    
def start_crawl():
   
    #获取当前路径，创建文件夹，保存爬取的url
    _curpath = os.path.abspath(os.curdir)
    _today = str(time.strftime('%Y-%m-%d',time.localtime(time.time())))
    _filepath = "%s%s%s" % (_curpath,'\\','checkfile')
    #存放文件
    _filename = "%s%s%s%s" % (_filepath,'\\',_today,'.txt')

    #在执行目录下创建checkfile目录，存放每天采集的url,用来去重
    pub_function.mkdir(_filepath)
    
    _Mysql_package = Mysql_package()
    #获取配置好爬取的URL
    _sql="select url,id from crawl_url where useflag='1' order by orderno"
    _url_list=_Mysql_package.query(_sql)
    for _url in _url_list:
        _url_item = _url[0] #配置爬取的网站URL
        _url_id = _url[1] #配置爬取的网站系统序号
               
        #根据url爬取各类型当天的数据
        _sql="select link_url from crawl_url_item where url_id=%d limit 1" % _url_id
        _dataset_list=_Mysql_package.query(_sql)
        
        if len(_dataset_list)>0:
            _dataset=_dataset_list[0]
            _link_url = _dataset[0]
        else:
            continue

            
        #第1页数据  取当天_DEAL_TIME=01 数据 传入表单数据进行取数 
        _html_content = html_content.get_html_randomcond(_link_url,['1',{"_TIMEBEGIN":"","_TIMEEND":"","_DEAL_TIME":"01","_PAGENUMBER":1}])
        #当天记录条数
        _reg=r'<span class="span_left">搜索记录数:<b>(.*?)</b></span>'  
        _list = pub_function.get_html_reg(_reg,_html_content) 
        _rownum = int(_list[0]) 
        #当天总页数
        _reg=r'<span class="span_right">页码<b>1/(.*?)</b></span>'  
        _list = pub_function.get_html_reg(_reg,_html_content) 
        _pagenum = int(_list[0]) + 1 # 总页数 + 1,用到range(1,_pagenum)
        _sql_str = ''
        if (_rownum >= 1) :
            for _pagenum in range(1,_pagenum):
                #第1页数据 直接使用即可
                if (_pagenum == 1):  
                    _sql_str = create_sqltext.get_sqltext(_html_content,_filename) 
                    if _sql_str != '':
                        #print(_sql_str)
                        _Mysql_package.update_or_insert(_sql_str)
                elif (_pagenum > 1):
                    #第二页起数据
                    time.sleep(int(random.uniform(10, 30))) #延时爬取防反爬
                    #第 _pagenum 页数据  取当天 _DEAL_TIME=01 数据 传入表单数据进行取数 
                    _html_content = html_content.get_html_randomcond(_link_url,['1',{"_TIMEBEGIN":"","_TIMEEND":"","_DEAL_TIME":"01","_PAGENUMBER":_pagenum}])
                    _sql_str = ''
                    _sql_str = create_sqltext.get_sqltext(_html_content,_filename)
                    #每一页提交一次 
                    if _sql_str != '':
                        _Mysql_package.update_or_insert(_sql_str)
            
            

if __name__ =="__main__":
    start_crawl()