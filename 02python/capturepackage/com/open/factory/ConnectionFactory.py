# coding=gbk
'''
Created on 2014年6月12日

@author: zhujinrong
'''
import mysql.connector

class ConnectionFactory(object):
    '''
    classdocs
    '''
    
    config = {'host':'127.0.0.1',#默认127.0.0.1  
                  'user':'root',  
                  'password':'root',  
                  'port':3306 ,#默认即为3306  
                  'database':'amydb',  
                  'charset':'utf8'#默认即为utf8  
                  }  

    def __init__(self):
        '''
        Constructor
        '''
    
    def getConnection(self):
        conn = mysql.connector.connect(**self.config)
        return conn
        