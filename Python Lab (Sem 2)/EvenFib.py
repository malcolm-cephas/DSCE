a,b=0,1
sum=0
while(b<=4000000):
    c=a+b
    a=b
    b=c
    if(c%2==0):
        sum+=c
print(f"sum of even number in fibinocci series until 4 mil = {sum}")