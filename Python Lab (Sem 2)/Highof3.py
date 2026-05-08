a=int(input("enter first number"))
b=int(input("enter second number"))
c=int(input("enter third number"))
if(a>b and a>c):
    print(f"a={a} is the greatest number")
elif(b>a and b>c):
    print(f"b={b} is the greatest number")
elif(c>a and c>b):
    print(f"c={c} is the greatest number")
else:
    if(a==b and b==c):
        print("all numbers are equal")
    elif(a==b):
        print(f"a={a} and b={b} is the greatest number")
    elif(a==c):
        print(f"a={a} and c={c} is the greatest number")
    elif(b==c):
        print(f"b={b} and c={c} is the greatest number")