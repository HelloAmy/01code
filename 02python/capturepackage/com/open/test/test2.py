# encoding=gbk
'''
Created on 2014��6��12��

@author: zhujinrong
'''

import datetime

print(datetime.datetime.today().__format__("%Y%m%d%H%M%S%f"))

print(datetime.datetime.utcnow())

print(datetime.datetime.today().__str__())
