from itertools import zip_longest, chain


def grouper(n, iterable, fillvalue=None):
    "grouper(3, 'ABCDEFG', 'x') --> ABC DEF Gxx"
    args = [iter(iterable)] * n
    return zip_longest(fillvalue=fillvalue, *args)


file = open("../../00_samples/lena512color.data", "rb")
data2 = []
with file:
    data = file.read()
    for byte in data:
        data2.append(byte)

data2 = grouper(3, data2)
data2 = sorted(data2, key=lambda t: sum(t))
data2 = list(chain.from_iterable(data2))

out = bytes(data2)

file = open("sorted3.data", "wb")
file.write(out)
