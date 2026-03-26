/* calculate the simple interest and compound interest by reading principal amount, rate of interest and time

The formula to find simple interest is simpleInterest = (principal * rate * time) / 100.

The formula to find compound interest is compoundInterest = principal * pow(1 + (rate / 100), time) - principal. */

#include <stdio.h>
#include <math.h>

int main() {
    float P, rate, time, SI, CI;

    // Input P amount, rate of interest and time
    printf("Enter P,R,T: ");
    scanf("%f%f%f", &P,&rate,&time);
    

    // Calculate simple interest
    SI = (P * rate * time) / 100;

    // Calculate compound interest
    CI = P * pow(1 + (rate / 100), time) - P;

    // Display results
    printf("SI= %f\n", SI);
    printf("CI= %f\n", CI);

    return 0;
}