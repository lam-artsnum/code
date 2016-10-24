from itertools import zip_longest, chain


def grouper(n, iterable, fillvalue=None):
    "grouper(3, 'ABCDEFG', 'x') --> ABC DEF Gxx"
    args = [iter(iterable)] * n
    return zip_longest(fillvalue=fillvalue, *args)

def rotate(l,n):
    return l[n:] + l[:n]


file = open("../../00_samples/lena512color.data", "rb")
data2 = []
with file:
    data = file.read()
    for byte in data:
        data2.append(byte)

data2 = list(grouper(3, data2))

for i in range(128):
    file = open("rotated_%03d.rgb" % i, "wb")
    out = rotate(data2, i)
    print(out)
    out = list(chain.from_iterable(out))
    out = bytes(out)
    file.write(out)
