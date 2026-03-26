//Binary equivalent of a given positive number between 0 to 255.
#include <stdio.h>

int main() {
    static int number,bit[8],i,j;

    // Prompt the user for input
    printf("Enter a number: ");
    scanf("%d", &number);

    // Validate the input
    if (number < 0 || number > 255) {
        printf("Number is out of range.\n");
        return 1; // Exit with error code
    }

   for(i=0;number!=0;i++)
   {
       bit[i]=number%2;
       number=number/2;
   }
   printf("Binary equivalent: ");
   for(j=i-1;j>=0;j--)
    printf("%d",bit[j]);
	printf("\n");
    return 0; // Successful execution
}