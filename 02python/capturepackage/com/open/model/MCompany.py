# coding=gbk
'''
Created on 2014年6月11日

@author: zhujinrong
'''

class MCompany(object):
    #===========================================================================
    # 公司对象
    #===========================================================================
   
    keyID = ''
    # 主键ID
    
    companyName = ''
    # 公司名称
    
    companyIndustry = ''
    #公司行业
    
    companyNature = ''
    # 公司性质
    
    companyScale = ''
    # 公司规模
    
    companyLink = ''
    #公司链接
    
    remark = ''
    #备注
    
    isDelete= 0
    #是否删除

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
        
        
        