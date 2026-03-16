msg = "dayananda"
d = 3

rail = ['']*d
row, down = 0, True

for c in msg:
    rail[row] += c
    row += 1 if down else -1
    if row == d or row < 0:
        down = not down
        row += -2 if down else 2

enc = ''.join(rail)
print("Encrypted Message:", enc)