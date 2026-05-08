def ls(arr,target):
    for i in range(len(arr)):
        if(arr[i]==target):
            return True
    return False
def bs(arr,target):
    list.sort(arr)
    low=0
    high=len(arr)-1
    while(low<=high):
        mid=(low+high)//2
        if(arr[mid]==target):
            return True
        elif(arr[mid]<target):
            low=mid+1
        else:
            high=mid-1
    return False
arr=[5,6,9,8,7,4,12,56,2,14,366,1,2]
ele=int(input("enter number to be searched: "))
if ls(arr,ele):
    print(f"element found using linear search ")
else:
    print("element not found using linear search")
if bs(arr,ele):
    print("element found using binary search")
else:
    print("element not found using binary search")