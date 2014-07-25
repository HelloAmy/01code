# coding=gbk
'''
Created on 2014年6月11日

@author: zhujinrong
'''

from time import gmtime, strftime, time
from com.open.model.MJob import MJob

class DJob(object):
    '''
    classdocs
    '''

    def __init__(self):
        '''
        Constructor
        '''
    
    def get_job_byLinkUrl(self, conn, job):
        '''
            根据KeyID查询JobInfo
        '''
        ret = MJob()
        tableName = "job" + job.keyID[0:6]
        sql_get_job = "SELECT KeyID,CompanyID, PublishDay, WorkPlace, RecuitingNumbers, JobLabel, JobDescription, LinkUrl, Remark,IsDelete,ModifyTime"
        sql_get_job += " FROM " + tableName
        sql_get_job += " WHERE LinkUrl = '" + job.linkUrl + "' AND IsDelete = 0 LIMIT 1"
        cursor = conn.cursor()
        cursor.execute(sql_get_job)
        for(KeyID,CompanyID, PublishDay, WorkPlace, RecuitingNumbers, JobLabel, JobDescription, LinkUrl, Remark,IsDelete,ModifyTime) in cursor:
            ret.KeyID = KeyID
            ret.CompanyID = CompanyID
            ret.PublishDay = PublishDay
            ret.WorkPlace = WorkPlace
            ret.RecuitingNumbers = RecuitingNumbers
            ret.JobLabel = JobLabel
            ret.JobDescription = JobDescription
            ret.LinkUrl = LinkUrl
            ret.Remark = Remark
            ret.IsDelete = IsDelete
            ret.modifyTime = ModifyTime
        cursor.close()
        return ret
    
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
    def update_job(self,conn, job):
        '''
        根据keyID更新Job表的Remark字段
        '''
        tableName = "job" + job.KeyID.substr(0, 6)
        sql_update_job = "UPDATE " + tableName
        sql_update_job += " SET Remark ='" + job.remark + "'"
        sql_update_job += " WHERE KeyID = '" + job.keyID + "' AND IsDelete = 0 LIMIT 1"
        cursor = conn.cursor()
        ret = cursor.execute(sql_update_job)
        cursor.close()
        return ret
