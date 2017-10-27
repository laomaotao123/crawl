#-*- coding:utf-8 -*-
'''
公用的一些其他函数
Created on 2017年10月19日

@author: Administrator
'''

from db_config import Mysql_package
import proxy_deal 
import headers_form 
import random
import re
import os

#获得随机的一个IP,返回list 如[213,{"http":"23213.3243.34.23:8080"}]
def get_random_ip():
    _ret_list=[]
    _ret = False
    while _ret == False:
        _sql="SELECT id,proxy_kind,proxy_ip,proxy_port FROM parm_proxy_ip \
              WHERE id >= ((SELECT MAX(id) FROM parm_proxy_ip)- \
                 (SELECT MIN(id) FROM parm_proxy_ip)) * RAND() + \
                 (SELECT MIN(id) FROM parm_proxy_ip)  LIMIT 1"
        _result = Mysql_package().query(_sql)
        if len(_result)>0:
            _list = _result[0]
            _dict={}
            _dict[_list[1]] ="%s%s%s" % (_list[2],":",_list[3])
            _ret_list=[_list[0],_dict]
            
            #判断代理IP是否有效
            _ret = proxy_deal.check_proxy_valid(_dict)
            if _ret:
                break
        
    return _ret_list


#随机获取useragent
def get_useragent():
    _return_list = []
    _headers_list = headers_form.get_headers()
    _listnum = len(_headers_list)
    #print(_listnum)
    if _listnum>0:
        _random_num = int(random.uniform(0,_listnum))
        _return_list = _headers_list[_random_num]
    else:
        _return_list =[("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko"),
                       ("Referer","http://deal.ggzy.gov.cn/ds/deal/dealList.jsp"),]     
    return _return_list

#正则匹配html中需要的内容 _reg正则表达式 _html 源html
def get_html_reg(_reg,_html):
    #reg=r'<a href="(http://deal.ggzy.gov.cn/ds/deal/dealList.jsp.*?HEADER_DEAL_TYPE=.*?)">(.*?)</a>' #正则表达式 
    reg=re.compile(_reg) #compile 增加匹配效率  正则匹配返回类型为list
    return re.findall(reg, _html )


#本地文件中判断url是否已爬取过，已经爬取过则跳过
def get_urlexists(_urlname,_filename):
    #判断每天的日期文件是否存在，不存在则创建一个，存在判断该url是否已存在，存在直接跳过爬取
    if not os.path.exists(_filename):
        _fileopen = open(_filename,'w')
        _fileopen.write(_urlname+'\n')
        _fileopen.close()
        return '0'
    else:   
        _fileopen = open(_filename,'r+')
        _filelist = _fileopen.readlines()
        _return_list = re.findall(_urlname,str(_filelist))
        #print(_return_list)
        if len(_return_list) > 0 :
            _fileopen.close()
            return '1'
        else:
            _fileopen.write(_urlname+'\n')
            _fileopen.close()
            return '0'
        
#创建目录
def mkdir(_path):
    # 去除首位空格
    path=_path.strip()
    # 去除尾部 \ 符号
    path=path.rstrip("\\")
    # 判断路径是否存在
    isExists=os.path.exists(path)
    # 判断结果
    if not isExists:
        # 如果不存在则创建目录
        os.makedirs(path)  #当父目录不存在的时候 os.mkdir(path)不会创建，os.makedirs(path)则会创建父目录