# coding=gbk
'''
Created on 2014��6��11��

@author: zhujinrong
'''

class MCompany(object):
    #===========================================================================
    # ��˾����
    #===========================================================================
   
    keyID = ''
    # ����ID
    
    companyName = ''
    # ��˾����
    
    companyIndustry = ''
    #��˾��ҵ
    
    companyNature = ''
    # ��˾����
    
    companyScale = ''
    # ��˾��ģ
    
    companyLink = ''
    #��˾����
    
    remark = ''
    #��ע
    
    isDelete= 0
    #�Ƿ�ɾ��

    def parseJson(self):
        jsonstr = '{';
        jsonstr = jsonstr + "keyID:" + self.keyID + "," 
        jsonstr = jsonstr + "companyName:" + self.companyName + ","
        jsonstr = jsonstr + "companyIndustry:" + self.companyIndustry + ","
        jsonstr = jsonstr + "companyNature:" + self.companyNature + ","
        jsonstr = jsonstr + "companyScale:" + self.companyScale + ","
        jsonstr = jsonstr + "companyLink:" + self.companyLink + ","
        jsonstr = jsonstr + "remark:" + self.remark + ","
        jsonstr = jsonstr + "isDelete:" + self.isDelete.__str__()
        jsonstr = jsonstr + '}'
        return jsonstr
        
        
        