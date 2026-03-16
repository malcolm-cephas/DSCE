n=int(input("enter no of rows: "))
n=n+1
for i in range(1,n):
    for j in range(1, i+1):
        print("*",end=' ')
    print()