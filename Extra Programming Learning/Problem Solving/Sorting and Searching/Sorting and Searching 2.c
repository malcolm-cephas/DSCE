//A non-recursive function to search for a Key value in a given sorted list of integers using binary search method.
#include <stdio.h>

int main() {
    int n, i, key, arr[20];
    int binarySearch(int [], int , int );
    
    printf("Enter number of elements: ");
    scanf("%d", &n);

    printf("Enter %d sorted integers:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter key to search: ");
    scanf("%d", &key);

    int result = binarySearch(arr, n, key);

    if (result == -1)
        printf("Key %d not found in the list.\n", key);
    else
        printf("Key %d found at position %d (index %d).\n", key, result + 1, result);

    return 0;
}

// Iterative (non-recursive) binary search function
int binarySearch(int arr[], int n, int key) {
    int low = 0, high = n - 1;

    while (low <= high) {
        int mid = (low + high) / 2;

        if (arr[mid] == key)
            return mid;          // key found
        else if (arr[mid] < key)
            low = mid + 1;       // search in right half
        else
            high = mid - 1;      // search in left half
    }

    return -1; // key not found
}