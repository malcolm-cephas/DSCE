lnum=int(input("enter the last value of the range: "))
sum=0
for n in range(2, lnum+1):
    for j in range(2,n):
        if(int(n%j)==0):
            break
    else:
        sum=sum+n
print(f"sum of the prime numbers till {lnum} = {sum}")