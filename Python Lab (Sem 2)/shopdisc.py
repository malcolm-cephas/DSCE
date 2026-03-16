amt=float(input("enter total amount purchased: "))
if(amt>1000):
    disc=(10/100)*amt
else:
    disc=0
bill=amt-disc
print(f"you get a discount of {disc} and your net bill is {bill}")