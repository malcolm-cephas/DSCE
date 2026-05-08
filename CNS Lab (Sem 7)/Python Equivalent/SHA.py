import hashlib

msg = input("Enter the string: ")

digest = hashlib.sha1(msg.encode()).hexdigest()

print("SHA-1 Digest =", digest)