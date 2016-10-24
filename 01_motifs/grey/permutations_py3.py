#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# permutations.py:
#
# génère


from itertools import permutations, chain


data = []

for i in permutations(range(0, 256, 8), 3):
    data.append(i)

data = list(chain.from_iterable(data))


out = bytes(data)
file = open("permutations.data", "wb")
file.write(out)
