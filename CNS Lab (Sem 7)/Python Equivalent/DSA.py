import random

p,q,g = 467,233,2
x = random.randint(1,q-1)

msg = input("Enter message to sign: ")
h = sum((i+1)*ord(c) for i,c in enumerate(msg)) % q

while True:
    k = random.randint(1,q-1)
    r = pow(g,k,p) % q
    s = (pow(k,-1,q)*(h + x*r)) % q if r else 0
    if r and s: break

print("(r,s) =", r, s)
print("Signature (hex):", f"{r:02X}{s:02X}")