# coding=gbk
'''
Created on 2014��6��11��

@author: zhujinrong
'''
import hashlib
import datetime

class KeyIDFactory(object):
    '''
    classdocs
    '''
    tableName = ''
    #����
    
    databaseName = ''
    #���ݿ���


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
        return datetime.datetime.today().__format__("%Y%m%d%H%M%S%f") + h.hexdigest()[0:11]
        