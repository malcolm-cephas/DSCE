p = int(input("Enter prime number: "))
g = int(input(f"Enter primitive root of {p}: "))

x = int(input(f"Enter value for x less than {p}: "))
R1 = pow(g, x, p)
print("R1 =", R1)

y = int(input(f"Enter value for y less than {p}: "))
R2 = pow(g, y, p)
print("R2 =", R2)

K1 = pow(R2, x, p)
print("Key calculated at Sender's side:", K1)

K2 = pow(R1, y, p)
print("Key calculated at Receiver's side:", K2)

print("Diffie-Hellman secret key was calculated successfully.")