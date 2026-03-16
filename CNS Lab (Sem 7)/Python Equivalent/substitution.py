a="abcdefghijklmnopqrstuvwxyz"
b="@%&wvutsrq24nmlkjihg97dcba"

s=input("Enter any string: ").lower()
enc=''.join(b[a.index(c)] if c in a else c for c in s)
print("Encrypted:",enc)
print("Decrypted:",''.join(a[b.index(c)] if c in b else c for c in enc))