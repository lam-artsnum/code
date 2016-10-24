file = open("../../00_samples/lena512grey.data", "rb")

data2 = []

with file:
    data = file.read()
    for byte in data:
        data2.append(255 - ord(byte))

out = bytes(bytearray(data2))

file = open("negate.data", "wb")
file.write(out)

