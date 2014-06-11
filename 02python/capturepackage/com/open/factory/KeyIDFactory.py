# coding=gbk
'''
Created on 2014年6月11日

@author: zhujinrong
'''
from time import gmtime, strftime, time
import hashlib

class KeyIDFactory(object):
    '''
    classdocs
    '''
    tableName = ''
    #表名
    
    databaseName = ''
    #数据库名


    def __init__(self, tableName, databaseName):
        '''
        Constructor
        '''
        self.tableName = tableName
        self.databaseName = databaseName

    def CreateKeyID(self):
        h = hashlib.md5()
        data = self.databaseName + self.tableName;
        h.update(data.encode("gb2312"))
        return strftime("%Y%m%d%H%M%S",gmtime(time()+28800)) + h.hexdigest()[0:11]
        