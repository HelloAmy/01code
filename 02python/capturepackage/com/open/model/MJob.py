# coding=gbk
from com.open.model.MCompany import MCompany
'''
Created on 2014��6��3��

@author: zhujinrong
'''
class MJob:
    #===========================================================================
    # ������model
    #===========================================================================

    keyID = ''
    #����ID
    
    company = MCompany()
    #��˾��Ϣ

    publishDay = ''
#     ��������

    workPlace = ''
#     �����ص�

    recruitingNumbers = ''
#     ��Ƹ����

    joblabel = ''
#     ְλ

    jobDescription = ''
#     ְλ����

    linkUrl = ''
#     ҳ�����ӵ�ַ

    remark = ''
    #��ע��Ϣ

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