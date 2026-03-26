//display values reverse order from an array using a pointer.
#include <stdio.h>

int main() {
    int n, sum = 0, arr[10];

    // Input the number of elements
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    // Input the array elements
    printf("Enter the elements:\n");
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    
    int *ptr = arr;  
    
    // Display the array elements in reverse order
    printf("The elements in reverse order are:\n");
    for (int i = n-1; i >= 0; i--) {
       printf("%2d", *(ptr+i));
    }

    return 0;
}