# coding=gbk
'''
Created on 2014��6��3��

@author: zhujinrong
'''
class MJob:
    #===========================================================================
    # ������model
    #===========================================================================
    
    companyName = ''
#     ��˾����

    companyIndustry = ''
#     ��˾��ҵ

    companyNature = ''
#     ��˾����

    companyScale = ''
#     ��˾��ģ

    companyLink = ''
#     ��˾����

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