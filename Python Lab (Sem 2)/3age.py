a=int(input("enter age of first person: "))
b=int(input("enter age of first person: "))
c=int(input("enter age of first person: "))
if(a>b and a>c):
    if(b>c):
        print(f"1st person age {a} is the oldest and 3rd person age {c} is the youngest")
    elif(c>b):
        print(f"1st person age {a} is the oldest and 2nd person age {b} is the youngest")
    elif(b==c):
        print(f"1st person age {a} is the oldest and 2nd and 3rd person age {b} are the youngest")
elif(b>a and b>c):
    if(a>c):
        print(f"2nd person age {b} is the oldest and 3rd person age {c} is the youngest")
    elif(c>a):
        print(f"2nd person age {b} is the oldest and 1st person age {a} is the youngest")
    elif(a==c):
        print(f"2nd person age {b} is the oldest and 1st and 3rd person age {b} are the youngest")
elif(c>a and c>b):
    if(a>b):
        print(f"3rd person age {c} is the oldest and 2nd person age {b} is the youngest")
    elif(b>a):
        print(f"3rd person age {b} is the oldest and 1st person age {a} is the youngest")
    elif(a==b):
        print(f"3rd person age {c} is the oldest and 1st and 2nd person age {b} are the youngest")
else:
    if(a==b and b>c):
        print(f"1st and 2nd person age {a} are the oldest and 3rd person age {c} is the youngest")
    elif(b==c and b>a):
        print(f"2nd and 3rd person age {b} are the oldest and 1st person age {a} is the youngest")
    elif(a==c and a>b):
        print(f"1st and 3rd person age {a} are the oldest and 2nd person age {b} is the youngest")
    elif(a==b and b==c):
        print(f"all three people are of the same age {a}")