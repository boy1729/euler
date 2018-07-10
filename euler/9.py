# -*- coding: utf-8 -*-
"""
Created on Tue Jul 10 16:35:39 2018

@author: vjha040218
"""

lib = []

for i in range(1,499):
    for j in range(1,499):
        k = 1000 - i - j
        x = [i,j,k]
        x.sort()
        lib.append(x)


def chec_triplet(a):
    a.sort()
    z = a[2]
    y = a[1]
    x = a[0]
    return (z**2 == x**2 + y**2)

flag = False

k = 0
while not flag:
    q = lib[k]
    if chec_triplet(q):
        break
    k += 1

print(k)
print(q)
print(q[0]*q[1]*q[2])