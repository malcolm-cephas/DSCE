//takes two integer operands and one operator from the user, performs the operation and then prints the result. (Consider the operators +,-,*, /, % and use Switch Statement).
#include <stdio.h>

int main() {
    int num1, num2, result;
    char operator;

    // Take input from the user
    printf("Enter two numbers: ");
    scanf("%d%d", &num1,&num2);
    printf("choose an operator (+,-,*,/,%): ");
    scanf(" %c", &operator);  // Note the space before %c to consume any whitespace

    // Perform the operation based on the operator
    switch (operator) {
        case '+':
            result = num1 + num2;
            printf("%d + %d = %d\n", num1, num2, result);
            break;
        case '-':
            result = num1 - num2;
            printf("%d - %d = %d\n", num1, num2, result);
            break;
        case '*':
            result = num1 * num2;
            printf("%d * %d = %d\n", num1, num2, result);
            break;
        case '/':
            if (num2 != 0) {
                result = num1 / num2;
                printf("%d / %d = %d\n", num1, num2, result);
            } else {
                printf("Error: Division by zero is not allowed.\n");
            }
            break;
        case '%':
            if (num2 != 0) {
                result = num1 % num2;
                printf("%d %% %d = %d\n", num1, num2, result);
            } else {
                printf("Error: Division by zero is not allowed for modulus.\n");
            }
            break;
        default:
            printf("Invalid operator\n");
            break;
    }

    return 0;
}