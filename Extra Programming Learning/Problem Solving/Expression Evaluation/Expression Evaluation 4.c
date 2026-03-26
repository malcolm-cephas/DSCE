//to generate the first n terms of the Fibonacci sequence
#include <stdio.h>

int main() {
    int n, a = 0, b = 1, next,i;

    printf("Enter the number of terms you want in the Fibonacci sequence: ");
    scanf("%d", &n);
    printf("Fibonacci Sequence:\n");
    printf("%d %d ",a,b);
    for (i = 3; i <= n; i++) {
        next = a + b;
        printf("%d ", next);
        a = b;
        b = next;
    }
    return 0;
}