#-*- coding:utf-8 -*-
'''
爬取的数据生成SQL语句返回
Created on 2017年10月12日 

@author: Administrator
'''

import time
import html_content
import pub_function 


#爬取的数据生成SQL语句返回
def get_sqltext(_html_content,_filename):
    _soup = html_content.get_BeautifulSoup(_html_content)
    _content_div = _soup.find_all('div', attrs={"class":"publicont"}) #以每个div=publicont为整个记录
    _sql_str=''
    for _content_item in _content_div:
        _content_str =  str(_content_item)
        
        #url、项目名称、发布时间
        #print(_content_item)
        _reg=r'<h4><a href="(.*?)" target="_blank" title="(.*?)">.*?</a><span class="span_o">(.*?)</span></h4>' 
        _list_find =  pub_function.get_html_reg(_reg,_content_str)
        if len(_list_find)>0:
            _list_href_title_time = _list_find[0]
        else:
            continue
        #分解
        _content_url = ''
        _province_code = ''
        if len(_list_href_title_time) >=1 :
            _content_url = _list_href_title_time[0]
            _reg=r'http://www.ggzy.gov.cn/information/html/a/(.*?)/.*.shtml'
            _province = pub_function.get_html_reg(_reg,_content_url)
            if len(_province)>0:
                _province_code = _province[0]
                
        
        #判断url是否已存在
        _is_exists = pub_function.get_urlexists(_content_url,_filename)
        #print(_is_exists)
        if _is_exists=='1':
            continue
           
        _title = ''
        if len(_list_href_title_time) >=2 :
            _title = _list_href_title_time[1]
                    
        _pub_time=''
        if len(_list_href_title_time) >=3 :
            _pub_time = _list_href_title_time[2]

        #省份、平台类型、业务类型、信息类型、行业 value
        _reg=r'<span class="span_on">(.*?)</span>'
        _list_info_value = pub_function.get_html_reg(_reg,_content_str)
        #分解
        if (len(_list_info_value) >=1 and _province_code == ''):
            _province_code = _list_info_value[0] #省份
                    
        _platform = ''
        if len(_list_info_value) >=2 :
            _platform =_list_info_value[1] #平台类型
                    
        _data_code = ''
        if len(_list_info_value) >=3 :
            _data_code =_list_info_value[2] #业务类型
            
        _stage = ''
        if len(_list_info_value) >=4 :
            _stage =_list_info_value[3] #信息类型
        _trade = ''
        if len(_list_info_value) >=5 :
            _trade =_list_info_value[4] #行业
        _nowtime = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
        #插入表中 crawl_content
        _sql="insert into crawl_content(province_code,content_url,title,data_code,platform,stage,trade,pub_time,indb_time) \
                select '%s','%s','%s','%s','%s','%s','%s','%s','%s' \
                from dual \
                where not exists(select 1 from  crawl_content where content_url='%s');"  \
                % (_province_code,_content_url,_title,_data_code,_platform,_stage,_trade,_pub_time,_nowtime,_content_url)
        
        _sql_str =_sql_str + _sql
    return _sql_str

#获取第二级SQL语句返回
def get_sqltext_child(_url_crawl):
    _html_child = html_content.get_html_randomcond(_url_crawl,['0',{}])
    #招标项目编号
    _project_no = ''
    _reg = r'<p class="p_o"><span>招标项目编号：(.*?)</span>'
    _list = pub_function.get_html_reg(_reg,_html_child) 
    if len(_list)>0:
        _project_no = _list[0]

    #二级页面内容链接
    _reg = r'<a href="javascript:;" title=".*?" onclick="showDetail\(this, \'(.*?)\',\'(.*?)\'\)"'
    _list = pub_function.get_html_reg(_reg,_html_child) 
    if len(_list)>0:
        for _list_child in _list:
            _url_type = _list_child[0] #信息类型  0101招标/资审公告 0102开标记录 0104交易结果公示 0105招标/资审文件澄清 0106资格预审结果
            _url_child = 'http://www.ggzy.gov.cn/information' + _list_child[1]
            #获取url最后一级详细内容
            _html_last = html_content.get_html_randomcond(_url_child,['0',{}])
            _reg=r'<div class="detail_content">(.*?)</table></body> </html></div>'
            _list_last = pub_function.get_html_reg(_reg,_html_last) 
            if len(_list_last)>0:
                #获取内容
                _html_content ='%s%s%s' % ('<div class="detail_content"',_list_last[0],'</table></body> </html></div>')
                #对最后一级页面内容进行详细抓取
                
                print(_html_content)
            

if __name__ =="__main__":
    print(get_sqltext_child('http://www.ggzy.gov.cn/information/html/a/650000/0104/201710/20/0065f49e8daf60894c47b5c6a6d31ac17265.shtml'))
    
