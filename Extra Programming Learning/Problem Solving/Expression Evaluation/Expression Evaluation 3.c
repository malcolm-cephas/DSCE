//sum of individual digits of a positive integer and test given numberis palindrome.
#include <stdio.h>

int main() {
    int num,sum = 0,reversed,temp,digit;

    printf("Enter a number: ");
    scanf("%d", &num);
    temp = num;
    while (temp > 0) {
        digit=temp%10; 
        sum += digit;  // Add the last digit to sum
        reversed = reversed * 10 + digit;  // Build the reversed number
        temp /= 10;  // Remove the last digit
    }
    printf("Sum of individual digits: %d\n", sum);
    // Check if given number and reversed are the same
    if (num == reversed) { 
         printf("%d is a palindrome.\n", num);
    } else {
        printf("%d is not a palindrome.\n", num);
    }

    return 0;
}