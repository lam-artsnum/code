#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# gradient.py:
#
# génère une image qui consiste en une série dßegradé


from struct import pack


width = 100
height = 100


header = pack("<BBBHHBHHHHBB", 0, 0, 3, 0, 0, 0, 0, 0, width, height, 8, 0)


data = []

for i in range(100):
    for y in range(100):
        data.append((i * y) % 255)


f = open("packit.tga", "wb")
f.write(header)
f.write(bytes(data))
f.close()
