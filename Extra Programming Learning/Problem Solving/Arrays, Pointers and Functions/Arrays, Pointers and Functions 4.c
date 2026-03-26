//reading elements using a pointer into an array and display the values using the array.
#include <stdio.h>

int main() {
    int n, sum = 0, arr[10];

    // Input the number of elements
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    int *ptr = arr;  
    
     printf("Enter the elements:\n");
    for (int i = 0; i < n; i++) {
        // Read element using the pointer
        scanf("%d", ptr + i);  // Pointer arithmetic to read the value
    }

    // Display the values using the array
    printf("The elements are:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);  // Display elements using the array
    }

    return 0;
}