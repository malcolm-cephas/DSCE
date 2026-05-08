from Crypto.Cipher import DES
from Crypto.Util.Padding import pad, unpad

plaintext = input("Enter plaintext (8 ASCII characters): ")
key = input("Enter key (8 ASCII characters): ")

if len(plaintext) != 8 or len(key) != 8:
    raise ValueError("Both plaintext and key must be exactly 8 ASCII characters.")

cipher = DES.new(key.encode(), DES.MODE_ECB)

encrypted = cipher.encrypt(plaintext.encode())
print("Ciphertext (Hex):", encrypted.hex().upper())

decrypted = cipher.decrypt(encrypted).decode()
print("Recovered Plaintext:", decrypted)