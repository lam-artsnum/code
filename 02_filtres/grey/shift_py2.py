file = open("../../00_samples/lena512grey.data", "rb")

data2 = []

with file:
    data = file.read()
    for byte in data:
        byte = ord(byte)
        data2.append((byte << 1) & 255)

out = bytes(bytearray(data2))

file = open("shift.data", "wb")
file.write(out)
