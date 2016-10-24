file = open("../../00_samples/lena512color.data", "rb")
data2 = []
with file:
    data = file.read()
    for i, byte in enumerate(data):
        if i % 3 == 1:
            data2.append(byte)
        else:
            data2.append(255)


out = bytes(data2)

file = open("only_red.data", "wb")
file.write(out)

