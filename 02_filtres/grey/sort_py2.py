file = open("../../00_samples/lena512grey.data", "rb")

data2 = []

with file:
    data = file.read()
    for byte in data:
        byte = ord(byte)
        data2.append(byte)

out = bytes(bytearray(sorted(data2)))

file = open("sorted.data", "wb")
file.write(out)

