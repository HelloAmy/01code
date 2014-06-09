# coding=gbk
'''
Created on 2014年6月3日

@author: zhujinrong
'''
class MJob:
    #===========================================================================
    # 工作类model
    #===========================================================================
    
    companyName = ''
#     公司名称

    companyIndustry = ''
#     公司行业

    companyNature = ''
#     公司性质

    companyScale = ''
#     公司规模

    companyLink = ''
#     公司链接

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

    def GetJSON(self):
        jsonstr = '{'
        jsonstr = jsonstr + '"companyName":"' + self.companyName + '",'
        jsonstr = jsonstr + '"companyIndustry":"' + self.companyIndustry + '",'
        jsonstr = jsonstr + '"companyNature":' + self.companyNature + '",'
        jsonstr = jsonstr + "companyScale:" + self.companyScale + ","
        jsonstr = jsonstr + "companyLink:" + self.companyLink + ","
        jsonstr = jsonstr + "publishDay:" + self.publishDay + ","
        jsonstr = jsonstr + "workPlace:" + self.workPlace + ","
        jsonstr = jsonstr + "recruitingNumbers:" + self.recruitingNumbers + ","
        jsonstr = jsonstr + "joblabel:" + self.joblabel + ","
        jsonstr = jsonstr + "jobDescription:" + self.jobDescription + ","
        jsonstr = jsonstr + "linkUrl:" + self.linkUrl
        jsonstr = jsonstr + '}'
        return jsonstr  