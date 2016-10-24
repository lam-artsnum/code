file = open("../../00_samples/lena512grey.data", "rb")
data2 = []
with file:
    data = file.read()
    for byte in data:
        data2.append((byte << 1) & 255)

out = bytes(data2)

file = open("out.data", "wb")
file.write(out)

