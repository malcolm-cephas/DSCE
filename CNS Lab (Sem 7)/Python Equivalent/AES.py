print("---- Simplified S-AES (16-bit) ----")

# Input
pt = input("Enter plaintext (4 hex): ").strip().upper()
key = input("Enter key (4 hex): ").strip().upper()

# Convert hex → nibbles
def hex_to_nibbles(h):
    v = int(h.zfill(4), 16)
    return [(v >> 12) & 0xF, (v >> 8) & 0xF, (v >> 4) & 0xF, v & 0xF]

def nibbles_to_hex(n):
    return f"{(n[0]<<12 | n[1]<<8 | n[2]<<4 | n[3]):04X}"

pt = hex_to_nibbles(pt)
key = hex_to_nibbles(key)

# S-box
SBOX = [9,4,10,11,13,1,8,5,6,2,0,3,12,14,15,7]
INV_SBOX = [10,5,9,11,1,7,8,15,6,0,2,3,12,4,13,14]

# Basic operations
def add_key(a,b): return [x^y for x,y in zip(a,b)]
def sub(a): return [SBOX[x] for x in a]
def inv_sub(a): return [INV_SBOX[x] for x in a]
def shift(a): return [a[0],a[3],a[2],a[1]]

# GF multiplication (small table)
GF = [[(i*j)%16 for j in range(16)] for i in range(16)]
def mix(a):
    return [
        a[0]^GF[4][a[1]],
        GF[4][a[0]]^a[1],
        a[2]^GF[4][a[3]],
        GF[4][a[2]]^a[3]
    ]

def inv_mix(a):
    return [
        GF[9][a[0]]^GF[2][a[1]],
        GF[2][a[0]]^GF[9][a[1]],
        GF[9][a[2]]^GF[2][a[3]],
        GF[2][a[2]]^GF[9][a[3]]
    ]

# Key expansion (simple)
def key_expand(k):
    w0=(k[0]<<4)+k[1]
    w1=(k[2]<<4)+k[3]
    w2=w0^0x80
    w3=w1^0x30
    K0=k
    K1=[(w2>>4)&0xF,w2&0xF,(w3>>4)&0xF,w3&0xF]
    K2=[x^y for x,y in zip(K0,K1)]
    return K0,K1,K2

# Encryption
def encrypt(s,k0,k1,k2):
    s=add_key(s,k0)
    s=sub(s)
    s=shift(s)
    s=mix(s)
    s=add_key(s,k1)
    s=sub(s)
    s=shift(s)
    s=add_key(s,k2)
    return s

# Decryption
def decrypt(s,k0,k1,k2):
    s=add_key(s,k2)
    s=shift(s)
    s=inv_sub(s)
    s=add_key(s,k1)
    s=inv_mix(s)
    s=shift(s)
    s=inv_sub(s)
    s=add_key(s,k0)
    return s

# Run
K0,K1,K2 = key_expand(key)

cipher = encrypt(pt,K0,K1,K2)
plain = decrypt(cipher,K0,K1,K2)

print("Ciphertext:", nibbles_to_hex(cipher))
print("Decrypted:", nibbles_to_hex(plain))