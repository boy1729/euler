# -*- coding: utf-8 -*-
"""
Created on Wed Jul  4 17:57:09 2018

@author: vjha040218
"""


def isprime(n):
    for j in range(2, int(n**0.5)+1):
        if n%j == 0:
            return False
    else:
        return True



sum = 2
num = 3

while num < 2000000:
    if isprime(num):
        sum = sum + num
        num1 = num
    num += 2
    
print(num1)
print(sum)
    