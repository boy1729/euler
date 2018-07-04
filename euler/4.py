# -*- coding: utf-8 -*-
"""
Created on Wed Jul  4 15:18:27 2018

@author: vjha040218
"""

lower = 99
higher = 997
pal = 0000
num4 = 0

for i in range(higher, lower, -1):
    num1 = str(i)
    num2 = num1[::-1]
    num3 = int(num1 + num2)
    h = min(num3//100, 999)
    l = max(100, num3//1000)
    
    for j in range(l,h):
        if num3%j == 0 and num3/j < 1000:
            #print(num4)
            if num4 < num3:
                num4 = num3
                pal = j
            break
    if num4 > 0:
        break
    
print(num4)
print(pal)
    