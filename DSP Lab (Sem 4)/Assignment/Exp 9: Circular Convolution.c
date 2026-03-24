#include <stdio.h>

int main() {
    int x[] = {2, 5};
    int h[] = {3, 4, 8, 7};

    int n1 = 2, n2 = 4;
    int N = (n1 > n2) ? n1 : n2;   // Length for circular convolution

    int x_pad[10] = {0}, h_pad[10] = {0}, y[10] = {0};

    // Zero padding to length N
    for (int i = 0; i < n1; i++)
        x_pad[i] = x[i];

    for (int i = 0; i < n2; i++)
        h_pad[i] = h[i];

    // Circular convolution
    for (int n = 0; n < N; n++) {
        for (int k = 0; k < N; k++) {
            y[n] += x_pad[k] * h_pad[(n - k + N) % N];
        }
    }

    // Display result
    printf("Circular Convolution Result:\n");
    for (int i = 0; i < N; i++) {
        printf("%d ", y[i]);
    }

    return 0;
}