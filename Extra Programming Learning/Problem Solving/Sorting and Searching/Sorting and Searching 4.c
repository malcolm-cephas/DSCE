//The given array of integers using selection sort in descending order.
#include <stdio.h>

int main() {
    int arr[50], n, i;
    void selectionSortDescending(int [], int );

    // Input number of elements
    printf("Enter number of elements: ");
    scanf("%d", &n);

    // Input array elements
    printf("Enter %d integers:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Call function
    selectionSortDescending(arr, n);

    // Output sorted array
    printf("Array sorted in descending order:\n");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}

// Function to perform selection sort in descending order
void selectionSortDescending(int arr[], int n) {
    int i, j, maxIndex, temp;

    for (i = 0; i < n - 1; i++) {
        maxIndex = i;  // Assume current index is the largest

        // Find the actual largest element in the remaining array
        for (j = i + 1; j < n; j++) {
            if (arr[j] > arr[maxIndex]) {
                maxIndex = j;
            }
        }

        // Swap if needed
        if (maxIndex != i) {
            temp = arr[i];
            arr[i] = arr[maxIndex];
            arr[maxIndex] = temp;
        }
    }
}