# coding=gbk
'''
Created on 2014��6��12��

@author: zhujinrong
'''
import mysql.connector

class ConnectionFactory(object):
    '''
    classdocs
    '''
    
    config = {'host':'127.0.0.1',#Ĭ��127.0.0.1  
                  'user':'root',  
                  'password':'root',  
                  'port':3306 ,#Ĭ�ϼ�Ϊ3306  
                  'database':'amydb',  
                  'charset':'utf8'#Ĭ�ϼ�Ϊutf8  
                  }  

    def __init__(self):
        '''
        Constructor
        '''
    
    def getConnection(self):
        conn = mysql.connector.connect(**self.config)
        return conn
        