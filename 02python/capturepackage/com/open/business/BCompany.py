# coding=gbk
'''
Created on 2014年6月12日

@author: zhujinrong
'''
from com.open.msqldao.DCompany import DCompany
from com.open.factory.ConnectionFactory import ConnectionFactory
from com.open.model.MCompany import MCompany

class BCompany(object):
    '''
    classdocs
    '''
    dao = DCompany()
    connectionFactory = ConnectionFactory()

    def __init__(self):
        '''
        Constructor
        '''
        
    def GetCompanyByName(self, companyName):
        ret = MCompany()
        ret.companyName = companyName
        conn = self.connectionFactory.getConnection()
        ret = self.dao.get_company(conn, ret)
        conn.close()
        return ret
    
    
    
 