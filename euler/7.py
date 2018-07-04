# -*- coding: utf-8 -*-
"""
Created on Wed Jul  4 15:53:53 2018

@author: vjha040218
"""

def isprime(n):
    for j in range(2, int(n**0.5)+1):
        if n%j == 0:
            return False
    else:
        return True



count = 1
num = 3

while count < 10001:
    if isprime(num):
        count += 1
        num1 = num
    num += 2
    
print(num1)
print(count)
    