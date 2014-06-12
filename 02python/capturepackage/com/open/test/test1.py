#!/usr/local/bin/python3.3
# encoding: utf-8

from com.open.model.MJob import MJob

job = MJob()

job.company.keyID = "11"

if 1 == 1 and 1 == 1:
    print(1)
    job.company.keyID = "12"
else :
    job.company.keyID = "22"
    print(2)
    
print(job.GetJSON())