# coding=gbk
from com.open.model.MCompany import MCompany
'''
Created on 2014年6月3日

@author: zhujinrong
'''
class MJob:
    #===========================================================================
    # 工作类model
    #===========================================================================

    keyID = ''
    #主键ID
    
    company = MCompany()
    #公司信息

    publishDay = ''
#     发布日期

    workPlace = ''
#     工作地点

    recruitingNumbers = ''
#     招聘人数

    joblabel = ''
#     职位

    jobDescription = ''
#     职位描述

    linkUrl = ''
#     页面链接地址

    remark = ''
    #备注信息

    def GetJSON(self):
        jsonstr = '{'
        jsonstr = jsonstr + "keyID:" + self.keyID + ","
        jsonstr = jsonstr + "company:" + self.company.parseJson() + ","
        jsonstr = jsonstr + "publishDay:" + self.publishDay + ","
        jsonstr = jsonstr + "workPlace:" + self.workPlace + ","
        jsonstr = jsonstr + "recruitingNumbers:" + self.recruitingNumbers + ","
        jsonstr = jsonstr + "joblabel:" + self.joblabel + ","
        jsonstr = jsonstr + "jobDescription:" + self.jobDescription + ","
        jsonstr = jsonstr + "linkUrl:" + self.linkUrl
        jsonstr = jsonstr + '}'
        return jsonstr  