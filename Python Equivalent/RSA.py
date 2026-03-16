import math

p,q=47,59
n=p*q; phi=(p-1)*(q-1)

e=3
while math.gcd(e,phi)!=1: e+=2
d=pow(e,-1,phi)

msg="1234567890123456|Rs5000"
c=[pow(ord(x),e,n) for x in msg]
dec=''.join(chr(pow(x,d,n)) for x in c)

print("Encrypted:",c)
print("Decrypted:",dec)