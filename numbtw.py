a=int(input("enter first number"))
b=int(input("enter last number"))
if(a<=b):
    while(a<=b):
        print(a)
        a+=1
elif(b<a):
    while(b<=a):
        print(b)
        b+=1
