# coding=gbk
'''
Created on 2014年6月3日

@author: zhujinrong
'''
import urllib.request
from com.open.model.MJob import MJob
import urllib.parse
import re

rule_joke = re.compile('<span id=\"text110\">([\w\W]*?)</span>')
rule_url = re.compile('<a href=\"(.*?)\" class="jobname"')

''' 0: 链接地址；1：公司名称 '''
rule_companyname = re.compile('<td class="sr_bt" colspan="1">\S*')
rule_companynameinfo = re.compile('<a target="_blank" style="font-size:14px;font-weight:bold;color:#000000;" href=\"(.*?)\">([\w\W]*?)</a>')
rule_companyindustry = re.compile('<strong>公司行业：</strong>&nbsp;&nbsp;([\S]*)')
rule_publishtime = re.compile('<td class="txt_1" width="12%">发布日期：</td><td class="txt_2">([\w\W]*?)</td>')
rule_workplace = re.compile('<td class="txt_1" width="12%">工作地点：</td><td class="txt_2">([\w\W]*?)</td>')
rule_recruitingNumbers = re.compile('<td class="txt_1" width="12%">招聘人数：</td><td class="txt_2">(\d*)</td>')
rule_joblabel = re.compile('<strong>职位标签:</strong>(\S*)')
rule_jobdescription = re.compile('<strong>职位描述:</strong>([\s\S]*)</div></td>')

mainUrl = 'http://search.51job.com'
url='http://search.51job.com/list/090200%252C00,%2B,%2B,%2B,%2B,%2B,%25C8%25ED%25BC%25FE,2,%2B.html?lang=c&stype=1&image_x=0&image_y=0&specialarea=00'

req=urllib.request.urlopen(url)
html = req.read().decode('gbk')
urls = rule_url.findall(html)
f = open('zhaopin.txt','w')

jobList = list()

for i in urls:
    ''' 构造url地址 '''
    i = i.replace('" onclick="zzSearch.acStatRecJob( 1 );','')
    
    ''' 进行处理 '''
    reqi = urllib.request.urlopen(i)
    htmli = reqi.read().decode('gbk')
    myjob = MJob()
    companyname = rule_companynameinfo.findall(htmli)
    myjob.companyLink = companyname[0][0]
    myjob.companyName = companyname[0][1]
    companyindustry = rule_companyindustry.findall(htmli)
    companyindustry[0] = companyindustry[0].replace('&nbsp;&nbsp;',';')
    companyindustry[0] = companyindustry[0].replace('<br><br><strong>公司性质：</strong>;',';')
    companyindustry[0] = companyindustry[0].replace('<br><br><strong>公司规模：</strong>;',';')
    companyindustry[0] = companyindustry[0].replace('</td><td','')
    str = companyindustry[0].split(';')
    if (len(str) >= 4):
        myjob.companyIndustry = str[0] + '/' + str[1]
        myjob.companyNature = str[2]
        myjob.companyScale = str[3]
        
    myjob.publishDay = rule_publishtime.findall(htmli)[0]
    
    myjob.workPlace = rule_workplace.findall(htmli)[0]
    
    if len(rule_recruitingNumbers.findall(htmli)) > 0:
        myjob.recruitingNumbers = rule_recruitingNumbers.findall(htmli)[0]

    if len(rule_joblabel.findall(htmli)) > 0:
        myjob.joblabel = rule_joblabel.findall(htmli)[0].replace('&nbsp;', '') 

    if len(rule_jobdescription.findall(htmli)) > 0:
        myjob.jobDescription = rule_jobdescription.findall(htmli)[0]
    myjob.linkUrl = i
    
    print(myjob.GetJSON())
    jobList.append(myjob)
    break



