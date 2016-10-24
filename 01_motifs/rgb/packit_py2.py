#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# gradient.py:
#
# génère une image qui consiste en une série dégradés


from struct import pack


width = 100
height = 100


header = pack("<BBBHHBHHHHBB", 0, 0, 2, 0, 0, 8, 0, 0, width, height, 32, 1 << 5)

f = open("packit.tga", "wb")
f.write(header)


data = []

for x in range(width):
    for y in range(height):
        r = 255
        g = 128
        b = 0
        a = 128

        f.write(pack('B', b))
        f.write(pack('B', g))
        f.write(pack('B', r))
        f.write(pack('B', a))


f.write(bytes(bytearray(data)))
f.close()
