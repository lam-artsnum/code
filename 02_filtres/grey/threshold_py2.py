file = open("../../00_samples/lena512grey.data", "rb")

data2 = []

with file:
    data = file.read()
    for byte in data:
        byte = ord(byte)
        if byte > 128:
            data2.append(255)
        else:
            data2.append(0)

out = bytes(bytearray(data2))

file = open("threshold.data", "wb")
file.write(out)
