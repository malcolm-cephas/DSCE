#include <stdio.h>

int main() {
    int x[] = {-4, 3, 2};
    int h[] = {5, 6, 7, 8};

    int n1 = 3, n2 = 4;
    int n = n1 + n2 - 1;

    int y[10] = {0};  // Result array initialized to 0

    // Linear convolution
    for (int i = 0; i < n1; i++) {
        for (int j = 0; j < n2; j++) {
            y[i + j] += x[i] * h[j];
        }
    }

    // Display result
    printf("Linear Convolution Result:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", y[i]);
    }

    return 0;
}