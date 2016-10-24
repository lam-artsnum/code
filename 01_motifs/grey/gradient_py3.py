#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# gradient.py:
#
# génère une image qui consiste en une série dßegradé


width = 128
height = 128


data = []

for i in range(width * height):
    data.append(i % 256)

out = bytes(data)
file = open("gradient.data", "wb")
file.write(out)
