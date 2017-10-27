#-*- coding:utf-8 -*-
'''
mysql数据库封装
Created on 2017年10月12日 

@author: Administrator
'''


import pymysql

#创建封装类
class Mysql_package:
    __con=None
    __config={
        "host":"localhost",
        "port":3306,
        "database":"crawldb",
        "username":"crawlone",
        "password":"crawlone#123",
        "charset":"utf8"
    }
    
    def __init__(self):
        try:
            self.__connect()
            print("数据库连接成功!")
        except:
            print("数据库连接失败!")

    def __del__(self):
        if(self.__con is not None):
            self.__con.close()
    
    def __connect(self):
        if (self.__con == None):
            self.__con=pymysql.connect(
                host   =self.__config['host'],
                port   =self.__config['port'],
                user   =self.__config['username'],
                passwd =self.__config['password'],
                db     =self.__config['database'],
                charset=self.__config['charset']
            )
        self.__con.autocommit(False)  #关闭自动提交
        return self.__con
    
    #传入sql查询语句
    def query(self,_sql):
        cursor = self.__connect().cursor()
        try:
            #print(_sql)
            cursor.execute(_sql)
            data = cursor.fetchall()
            
            # 提交到数据库执行
            self.__connect().commit()
            print("数据获取成功!")
        except:
            # 如果发生错误则回滚
            self.__connect().rollback()
            print("数据获取失败!")
            return False
        return data
    
    #更新或新增
    def update_or_insert(self,_sql):
        cursor = self.__connect().cursor()
        try:
            cursor.execute(_sql)
            # 提交到数据库执行
            self.__connect().commit()
            print("数据更新成功!")
            return True
        except Exception as e:
            # 如果发生错误则回滚
            self.__connect().rollback()
            print("数据更新失败!",e)
            return False
    
    #传入字典的SQL查询
    def query_dict(self,_sql_dict):
        if ("select" in _sql_dict.keys()):
            __sql="select " + _sql_dict["select"] + " from " + _sql_dict["from"] 
            if ("where" in _sql_dict.keys()):
                __sql += "where" + _sql_dict["where"] 
            if ("orderby" in _sql_dict.keys()):
                __sql += " order by " + _sql_dict["orderby"] 
        print(__sql)        
        return self.query(__sql)
        
    
    
    

    
