import numpy as np

K=np.array([[17,17,5],[21,18,21],[2,2,19]])
IK=np.array([[4,9,15],[15,17,6],[24,0,17]])

m=input("Enter a 3-letter lowercase word: ")
v=np.array([ord(c)-97 for c in m])

e=K.dot(v)%26
print("Encrypted:",''.join(chr(i+97) for i in e))

d=IK.dot(e)%26
print("Decrypted:",''.join(chr(i+97) for i in d))