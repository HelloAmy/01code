# encoding=gbk
'''
Created on 2014年6月12日

@author: zhujinrong
'''
import datetime
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
            if existCompany.modifyTime.__format__("%Y-%m-%d") != datetime.datetime.today().__format__("%Y-%m-%d"):
                existCompany.remark += datetime.datetime.today().__format__("%Y-%m-%d") + '|'
                self.companyDao.update_company(conn, existCompany)
            '''
            existCompany.remark += datetime.datetime.today().__format__("%Y-%m-%d") + '|'
            self.companyDao.update_company(conn, existCompany)
            '''
        else:
            keyIdFac = KeyIDFactory("amydb","company")
            job.company.keyID = keyIdFac.CreateKeyID()
            job.company.remark = datetime.datetime.today().__format__("%Y-%m-%d") + '|'
            self.companyDao.insert_company(conn, job.company)
        
        existJob = self.jobDao.get_job_byLinkUrl(conn, job)
        if existJob.linkUrl == job.linkUrl and existJob.modifyTime.__format__("%Y-%m-%d") != datetime.datetime.today().__format__("%Y-%m-%d"):
            existJob.remark += datetime.datetime.today().__format__("%Y-%m-%d") + '|'
            self.jobDao.update_job(conn, existJob)
        else:
            job.remark = datetime.datetime.today().__format__("%Y-%m-%d") + '|'
            self.jobDao.insertJob(conn, job)
        conn.commit()
        conn.close()
        
    def get_job(self, job):
        conn = self.connectionFactory.getConnection()
        temp_job = self.jobDao.get_job(conn, job)
        conn.commit()
        conn.close()
        return temp_job
    
    def update_job_remark(self, job):
        conn = self.connectionFactory.getConnection()
        self.jobDao.update_job(conn, job)
        conn.commit()
        conn.close()
        
    
        
        
        
        