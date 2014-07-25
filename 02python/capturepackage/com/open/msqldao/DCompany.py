# coding=gbk
'''
Created on 2014年6月11日

@author: zhujinrong
'''

from com.open.model.MCompany import MCompany

class DCompany(object):
    '''
    classdocs
    '''
    
    def __init__(self):
        '''
        Constructor
        '''
    
    def get_company(self, conn, company):
        '''
            根据KeyID获取Company信息
        '''
        ret = MCompany()
        cursor = conn.cursor()
        sql_query = "SELECT KeyID, CompanyName, CompanyIndustry, CompanyNature, CompanyScale, CompanyLink, Remark, IsDelete, ModifyTime"
        sql_query += " FROM company"
        sql_query += " WHERE IsDelete = 0 && CompanyName = %s LIMIT 1"
        cursor.execute(sql_query, (company.companyName,))
        for(KeyID, CompanyName, CompanyIndustry, CompanyNature, CompanyScale, CompanyLink, Remark, IsDelete, ModifyTime) in cursor:
            ret.keyID = KeyID
            ret.companyName = CompanyName
            ret.companyIndustry = CompanyIndustry
            ret.companyNature = CompanyNature
            ret.companyScale = CompanyScale
            ret.companyLink = CompanyLink
            ret.remark = Remark
            ret.isDelete = IsDelete
            ret.modifyTime = ModifyTime
        cursor.close()
        return ret
    
    def insert_company(self, conn, company):
        '''
        插入company信息
        '''
        
        sql_insert_company = "INSERT INTO company(KeyID, CompanyName, CompanyIndustry, CompanyNature, CompanyScale, CompanyLink, Remark)"
        sql_insert_company += " SELECT %(KeyID)s, %(CompanyName)s, %(CompanyIndustry)s, %(CompanyNature)s, %(CompanyScale)s, %(CompanyLink)s, %(Remark)s"
        sql_insert_company += " FROM DUAL"
        sql_insert_company += " WHERE NOT EXISTS("
        sql_insert_company += " SELECT '' FROM company WHERE IsDelete = 0 AND CompanyName='" + company.companyName + "' AND CompanyLink = '" + company.companyLink + "'" + ")"
        
        data = {
            'KeyID':company.keyID,
            'CompanyName': company.companyName,
            'CompanyIndustry': company.companyIndustry,
            'CompanyNature': company.companyNature,
            'CompanyScale': company.companyScale,
            'CompanyLink': company.companyLink,
            'Remark': company.remark
            }
        
        cursor = conn.cursor()
        return cursor.execute(sql_insert_company, data)
    
    def update_company(self, conn, company):
        '''
            修改company表的remark字段
        '''
        sql_update_company = "UPDATE company"
        sql_update_company += " SET Remark='" + company.remark + "'"
        sql_update_company += " WHERE KeyID = '" + company.keyID + "' AND IsDelete = 0 LIMIT 1"
        cursor = conn.cursor()
        ret = cursor.execute(sql_update_company)
        cursor.close() 
        return ret
        
        
        
        
        
        
    