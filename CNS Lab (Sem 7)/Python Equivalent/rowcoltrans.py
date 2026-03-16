msg = input("Enter plaintext: ").replace(" ", "")
col = 4
row = (len(msg)+col-1)//col

msg += "#"*(row*col-len(msg))
mat = [msg[i:i+col] for i in range(0,len(msg),col)]

enc = ''.join(mat[r][c] for c in range(col) for r in range(row))
print("Encrypted Text:", enc)