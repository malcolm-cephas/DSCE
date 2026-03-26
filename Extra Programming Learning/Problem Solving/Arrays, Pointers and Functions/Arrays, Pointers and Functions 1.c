//to find the minimum, maximum and average in an array of integers
#include <stdio.h>
#include <math.h>

int main() {
    int n,arr[10],min,max,sum;
    float average;

    // Read the size of the array
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    // Read the elements of the array
    printf("Enter %d integers:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Initialize min, max and sum
    min = arr[0];
    max = arr[0];
    sum = arr[0]; // Using long long to avoid overflow

    // Iterate through the array to find min, max, and sum
    for (int i = 1; i < n; i++) {
        if (arr[i] < min) {
            min = arr[i];
        }
        if (arr[i] > max) {
            max = arr[i];
        }
        sum += arr[i];
    }

    // Calculate the average
    average = (float)sum / n;

    // Print the results
    printf("Minimum: %d\n", min);
    printf("Maximum: %d\n", max);
    printf("Average: %.2f\n", average);

    return 0;
}