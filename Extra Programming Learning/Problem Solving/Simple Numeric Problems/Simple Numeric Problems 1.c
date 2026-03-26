//finding the max and min from the three numbers
#include <stdio.h>
int main()
{
	int a,b,c;
	int max, min;
	printf("Enter 3 integers: ");
	scanf("%d%d%d",&a,&b,&c);
	max = min = a;
	if (b > max) {
        max = b;
    }
    if (b < min) {
        min = b;
    }

    if (c > max) {
        max = c;
    }
    if (c < min) {
        min = c;
    }

    // Output the results
    printf("%d is max\n", max);
    printf("%d is min\n", min);
		
	return(0);
}