# coding=gbk
'''
Created on 2014年6月11日

@author: zhujinrong
'''

from time import gmtime, strftime, time

class DJob(object):
    '''
    classdocs
    '''

    def __init__(self):
        '''
        Constructor
        '''
    
    def insertJob(self, conn, job):
        '''
            插入job 信息
        '''
        # 插入job表
        tableName = "job" + strftime("%Y%m",gmtime(time()+28800))
        sql_insertjob  = "INSERT INTO " + tableName + "(KeyID,CompanyID, PublishDay, WorkPlace, RecuitingNumbers, JobLabel, JobDescription, LinkUrl, Remark)"
        sql_insertjob += " SELECT %(KeyID)s,%(CompanyID)s, %(PublishDay)s, %(WorkPlace)s, %(RecuitingNumbers)s, %(JobLabel)s, %(JobDescription)s, %(LinkUrl)s, %(Remark)s"
        sql_insertjob += " FROM DUAL"
        sql_insertjob += " WHERE NOT EXISTS(SELECT '' FROM " + tableName + " WHERE LinkUrl = '" + job.linkUrl + "')"
                     
        data = {
                'KeyID':job.keyID,
                'CompanyID':job.company.keyID,
                'PublishDay':job.publishDay,
                'WorkPlace': job.workPlace,
                'RecuitingNumbers': job.recruitingNumbers,
                'JobLabel': job.joblabel,
                'JobDescription': job.jobDescription,
                'LinkUrl': job.linkUrl,
                'Remark': job.remark
                }
        cursor = conn.cursor()
        cursor.execute(sql_insertjob, data)
        cursor.close()
        