//The Bubble sort method to sort a given list of integers in ascending order.
#include <stdio.h>

int main() {
    int arr[50], n, i;
    void bubbleSort(int [], int );

    // Input number of elements
    printf("Enter number of elements: ");
    scanf("%d", &n);

    // Input elements
    printf("Enter %d integers:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Call bubble sort function
    bubbleSort(arr, n);

    // Print sorted array
    printf("Sorted list in ascending order:\n");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}

// Bubble sort function
void bubbleSort(int arr[], int n) {
    int i, j, temp;

    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap elements
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}