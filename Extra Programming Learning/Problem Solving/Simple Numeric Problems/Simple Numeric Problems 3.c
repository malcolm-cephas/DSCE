// multiplication table for a given number and the number of rows inthe table 

#include <stdio.h>
int main()
{
	int a,r,i;
	printf("Enter an integer number : ");
	scanf("%d",&a);
	printf("Enter number of rows : ");
	scanf("%d",&r);
	for(i=1;i<=r;i++)
		printf("%d * %2d = %2d\n",a,i,a*i);
	return(0);
}