#-*- coding:utf-8 -*-
'''
对指定URL用 随机useragent和代理IP 进行请求，返回utf8格式HTML页面内容
Created on 2017年10月19日

@author: Administrator
'''
import urllib.parse  
import urllib.request
from bs4 import BeautifulSoup
import headers_form
import pub_function

#BeautifulSoup处理html并返回
def get_BeautifulSoup(_html):
    soup=BeautifulSoup(_html,"html.parser")  
    soup.prettify()
    return soup

        
#获取html内容 ,取随机useragent、代理IP ,_list 是列表 ['0',{}]不需要提交表单 ;['1',{"_TIMEBEGIN":"","_TIMEEND":"",...}]需要提交表单
#返回html内容
def get_html_randomcond(_url,_list):
    
    #判断是否需要提交表单 1是  0否
    if _list[0]=='1': 
        _TIMEBEGIN = _list[1]["_TIMEBEGIN"]
        _TIMEEND = _list[1]["_TIMEEND"]
        _DEAL_TIME = _list[1]["_DEAL_TIME"]
        _PAGENUMBER = _list[1]["_PAGENUMBER"]
        _data = bytes(urllib.parse.urlencode(headers_form.set_formdata(_TIMEBEGIN,_TIMEEND,_DEAL_TIME,_PAGENUMBER)), encoding='utf8') #转换成字节
    else:
        _data = None
    
    req=urllib.request.Request(_url) #实例将要请求的对象
           
    _num = 0
    _breakflag = False
    while _breakflag == False:

        _useragent = pub_function.get_useragent() #随机useragent
        _random_ip = pub_function.get_random_ip() #随机代理IP
        _ip_id = _random_ip[0] #代理IP表parm_proxy_ip记录 id序号，后面在判断失败时用来更新该IP是否可用
        _proxy_ip = _random_ip[1] #获取代理IP

        #设置代理
        proxy=urllib.request.ProxyHandler(_proxy_ip)
        #创建一个opener
        opener=urllib.request.build_opener(proxy,urllib.request.HTTPHandler)
        #伪装浏览器
        opener.addheaders=_useragent
        urllib.request.install_opener(opener)
        #针对反爬网站措施，失败换useragent和代理IP继续,直至成功
        try:
            res=urllib.request.urlopen(req,data=_data,timeout=10) #提交模拟表单
            _html = res.read().decode("utf8")
            #print(res.getcode())
            res.close()
            _breakflag = True
            break;
        except:
            #继续调用
            _num += 1
            print("已重新调用第 %d 次" % _num)
            _breakflag = False

    return _html  #decode的作用是将其他编码的字符串转换成unicode编码 encode的作用是将unicode编码转换成其他编码的字符串

if __name__ =="__main__":
    print(get_html_randomcond())
        