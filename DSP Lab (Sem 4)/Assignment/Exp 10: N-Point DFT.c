#include <stdio.h>
#include <math.h>

#define N 4

int main() {
    int x[N] = {1, 8, 5, 3};
    int h[N] = {2, 3, 4, 7};

    float real_x[N], imag_x[N];
    float real_h[N], imag_h[N];

    // -------- DFT of x(n) --------
    for (int k = 0; k < N; k++) {
        real_x[k] = 0;
        imag_x[k] = 0;

        for (int n = 0; n < N; n++) {
            real_x[k] += x[n] * cos(2 * M_PI * k * n / N);
            imag_x[k] -= x[n] * sin(2 * M_PI * k * n / N);
        }
    }

    // -------- DFT of h(n) --------
    for (int k = 0; k < N; k++) {
        real_h[k] = 0;
        imag_h[k] = 0;

        for (int n = 0; n < N; n++) {
            real_h[k] += h[n] * cos(2 * M_PI * k * n / N);
            imag_h[k] -= h[n] * sin(2 * M_PI * k * n / N);
        }
    }

    // Display results
    printf("DFT of x(n):\n");
    for (int k = 0; k < N; k++) {
        printf("X[%d] = %.2f + j(%.2f)\n", k, real_x[k], imag_x[k]);
    }

    printf("\nDFT of h(n):\n");
    for (int k = 0; k < N; k++) {
        printf("H[%d] = %.2f + j(%.2f)\n", k, real_h[k], imag_h[k]);
    }

    return 0;
}