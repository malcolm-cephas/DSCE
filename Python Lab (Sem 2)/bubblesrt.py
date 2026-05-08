def bubble_sort(arr):
    n=len(arr)
    for i in range(n):
        for j in range(n-i-1):
            if (arr[j]>arr[j+1]):
                arr[j],arr[j+1]=arr[j+1],arr[j]
def insertion_sort(arr2):
    n=len(arr2)
    for i in range(n):
            key=arr2[i]
            j=i+1
            while(j>=0 and arr2[j]>key):
                arr2[j+1]=arr2[j]
                j-=1
                arr2[j+1]=key
            i=j=k=0
arr=[64,34,25,12,22,11,90]
arr2=[23,54,34,56,78]
print("original array")
print(arr)
bubble_sort(arr)
print("Array after bubble sort:")
print(arr)
insertion_sort(arr2)
print("array aftr insetion sort:")
print(arr2)