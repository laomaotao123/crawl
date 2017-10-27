#-*- coding:utf-8 -*-
'''
模拟表单数据设置 ；请求表头伪装浏览器访问 防反爬

Created on 2017年10月19日

@author: Administrator
'''

def get_headers():
    headers_list = [
        [("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko"),
         ("Referer","http://deal.ggzy.gov.cn/ds/deal/dealList.jsp"),],
        [("User-Agent","Mozilla/4.0 (Windows NT 5.2; WOW64; Trident/7.0; rv:11.0) like Gecko"),
         ("Host","deal.ggzy.gov.cn"),],       
        [("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36"),],
        [("User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;Trident/4.0; InfoPath.2; .NET4.0C; .NET4.0E; .NET CLR 2.0.50727;360SE"),],
        [("User-Agent","Mozilla/5.0 (Windows; U; Windows NT 6.1; ) AppleWebKit/534.12 (KHTML, like Gecko) Maxthon/3.0 Safari/534.12"),],
        [("User-Agent","Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3)"),],
        [("User-Agent","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41 Safari/535.1 QQBrowser/6.9.11079.201"),],
        [("User-Agent","Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)"),],
        [("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:20.0) Gecko/20100101 Firefox/20.0"),],
        ]
    
    return headers_list

#提交表单数据
def set_formdata(_TIMEBEGIN,_TIMEEND,_DEAL_TIME='01',_PAGENUMBER=1):
    post_data={
     "TIMEBEGIN":_TIMEBEGIN,  #可以用在特殊日期段的数据重新爬取
     "TIMEEND":_TIMEEND,
    "DEAL_TIME":_DEAL_TIME,#发布时间：01当天  02近三天  06是区间段
    "DEAL_CLASSIFY":'00',#业务类型：01工程建设 02政府采购 03土地使用权 04矿业权 05国有产权 90其他  00不限
    "DEAL_STAGE":'0000',  #信息类型 业务类型编码00不限  0101招标/资审公告 0102开标记录 0104交易结果公示 0105招标/资审文件澄清 0106资格预审结果
    "DEAL_PROVINCE":0, #省份 0不限
    "DEAL_CITY":0, #地市 0不限
    "DEAL_PLATFORM":0, #来源平台 0不限
    "DEAL_TRADE":0, #行业 0不限
    "isShowAll":0, #是否全部显示 默认0
    "PAGENUMBER":_PAGENUMBER #显示第N页
    }
    return post_data 

if __name__ =="__main__":
    print(get_headers())