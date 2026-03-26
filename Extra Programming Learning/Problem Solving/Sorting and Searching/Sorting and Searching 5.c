//The given array of integers using insertion sort in ascending order.
#include <stdio.h>

int main() {
    int arr[50], n, i;
    void insertionSort(int [], int );

    // Input number of elements
    printf("Enter number of elements: ");
    scanf("%d", &n);

    // Input array elements
    printf("Enter %d integers:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Call insertion sort function
    insertionSort(arr, n);

    // Print sorted array
    printf("Array sorted in ascending order:\n");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}

// Function to perform insertion sort in ascending order
void insertionSort(int arr[], int n) {
    int i, key, j;

    for (i = 1; i < n; i++) {
        key = arr[i];      // Element to insert
        j = i - 1;

        // Shift elements that are greater than key
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }

        // Insert key at correct location
        arr[j + 1] = key;
    }
}