def encrypt(text, key):
    key %= 26
    result = ""
    for ch in text:
        if ch.isupper():
            result += chr((ord(ch) - ord('A') + key) % 26 + ord('A'))
        elif ch.islower():
            result += chr((ord(ch) - ord('a') + key) % 26 + ord('a'))
        else:
            result += ch
    return result


def decrypt(text, key):
    key %= 26
    result = ""
    for ch in text:
        if ch.isupper():
            result += chr((ord(ch) - ord('A') - key) % 26 + ord('A'))
        elif ch.islower():
            result += chr((ord(ch) - ord('a') - key) % 26 + ord('a'))
        else:
            result += ch
    return result


text = input("Enter any string: ")
key = int(input("Enter the key: "))

encrypted = encrypt(text, key)
print("\nEncrypted String is:", encrypted)

decrypted = decrypt(encrypted, key)
print("Decrypted String is:", decrypted)