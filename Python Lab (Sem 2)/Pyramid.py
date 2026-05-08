n=int(input("enter no of rows: "))
n=n+1
s=40
for i in range(1,n):
    print(' '*s, end=' ')
    print('* '*(i))
    s-=1