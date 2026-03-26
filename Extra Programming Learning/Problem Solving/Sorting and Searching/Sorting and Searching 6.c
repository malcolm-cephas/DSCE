//Sorts a given array of names.
#include <stdio.h>
#include <string.h>

int main() {
    char names[50][50], temp[50];
    int n, i, j;

    // Input number of names
    printf("Enter number of names: ");
    scanf("%d", &n);

    // Read names
    printf("Enter %d names:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%s", names[i]);  // Reads a single word as name
    }

    // Sorting names using simple string comparison
    for (i = 0; i < n - 1; i++) {
        for (j = i + 1; j < n; j++) {
            if (strcmp(names[i], names[j]) > 0) {
                strcpy(temp, names[i]);
                strcpy(names[i], names[j]);
                strcpy(names[j], temp);
            }
        }
    }

    // Print sorted names
    printf("\nNames in alphabetical order:\n");
    for (i = 0; i < n; i++) {
        printf("%s\n", names[i]);
    }

    return 0;
}