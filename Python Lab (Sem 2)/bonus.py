yr=int(input("enter years of service: "))
sal=int(input("enter your salary: "))
if(yr>5):
    bonus=(5/100)*sal
    print("congratulations you get a bonus")
else:
    bonus=0
    print("you do not get a bonus work for more time")
netSal=sal+bonus
print(f"you get a bonus of {bonus} and your net salary is {netSal}")