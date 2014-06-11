# coding=gbk
'''
Created on 2014��6��11��

@author: zhujinrong
'''
from com.open.model.MJob import MJob
from time import gmtime, strftime, time

import mysql.connector

class DJob(object):
    '''
    classdocs
    '''
    
    job = MJob()
    # ְλ��Ϣ


    def __init__(self, job):
        '''
        Constructor
        '''
        self.job = job
    
    def insertJob(self):
        config = {'host':'127.0.0.1',#Ĭ��127.0.0.1  
                  'user':'root',  
                  'password':'root',  
                  'port':3306 ,#Ĭ�ϼ�Ϊ3306  
                  'database':'amydb',  
                  'charset':'utf8'#Ĭ�ϼ�Ϊutf8  
                  }  
        try:
            conn = mysql.connector.connect(**config)
            
            # ����job��
            tableName = "job" + strftime("%Y%m",gmtime(time()+28800))
            sql_insertjob  = "INSERT INTO " + tableName + "(KeyID, PublishDay, WorkPlace, RecuitingNumbers, JobLabel, JobDescription, LinkUrl, Remark)"
            sql_insertjob += " SELECT %(KeyID)s, %(PublishDay)s, %(WorkPlace)s, %(RecuitingNumbers)s, %(JobLabel)s, %(JobDescription)s, %(LinkUrl)s, %(Remark)s"
            sql_insertjob += " FROM DUAL"
            sql_insertjob += " WHERE NOT EXISTS(SELECT '' FROM " + tableName + " WHERE LinkUrl = '" + self.job.linkUrl + "')"
                         
            data = {
                    'KeyID':self.job.keyID,
                    'PublishDay':self.job.publishDay,
                    'WorkPlace': self.job.workPlace,
                    'RecuitingNumbers': self.job.recruitingNumbers,
                    'JobLabel': self.job.joblabel,
                    'JobDescription': self.job.jobDescription,
                    'LinkUrl': self.job.linkUrl,
                    'Remark': self.job.remark
                    }
            
            cursor = conn.cursor()
            cursor.execute(sql_insertjob, data)
            
            
            conn.commit()
        except mysql.connector.Error as e:
            print('error!{}'.format(e))
        finally:
            cursor.close()
            conn.close()
        