# encoding=gbk
'''
Created on 2014年6月12日

@author: zhujinrong
'''
from com.open.msqldao.DCompany import DCompany
from com.open.msqldao.DJob import DJob
from com.open.factory.ConnectionFactory import ConnectionFactory 
from com.open.factory.KeyIDFactory import KeyIDFactory

class BJob(object):
    '''
    classdocs
    '''
    
    jobDao = DJob()
    
    companyDao = DCompany()
    
    connectionFactory = ConnectionFactory()

    def __init__(self):
        '''
        Constructor
        '''
        
    def insert_job(self, job):
        """
        插入Job表
        """
        keyIdFactory = KeyIDFactory("amydb", "job")
        job.keyID = keyIdFactory.CreateKeyID()
        conn = self.connectionFactory.getConnection()
        existCompany = self.companyDao.get_company(conn, job.company)
        if existCompany.companyName == job.company.companyName and existCompany.companyLink == job.company.companyLink:
            job.company.keyID = existCompany.keyID
        else:
            keyIdFac = KeyIDFactory("amydb","company")
            job.company.keyID = keyIdFac.CreateKeyID()
            self.companyDao.insert_company(conn, job.company)
        
        self.jobDao.insertJob(conn, job)
        conn.commit()
        conn.close()
        
            
        
        
        