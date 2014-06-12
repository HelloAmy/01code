# encoding=gbk
'''
Created on 2014年6月12日

@author: zhujinrong
'''

import datetime

print(datetime.datetime.today().__format__("%Y%m%d%H%M%S%f"))

print(datetime.datetime.utcnow())

print(datetime.datetime.today().__str__())
