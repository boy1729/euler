# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 14:05:16 2018

@author: vjha
"""


"""
The script uses combination of recursion and looping
to get to the target
"""
val = {}

m = 1000000
count = 1

def col_num(n):
    count = 1
    if n == 1:
        return count
    elif i in val.keys():
        return val[i]
    else:
        if n%2 == 0:
            count = count + col_num(n/2)
        elif n%2 == 1:
            count = count + col_num(3*n+1)
        val[n] = count
        return count

x = 1
y = 1
for j in range(1,m+1):
    if col_num(j) > x:
        x = col_num(j)
        y = j

print(y)