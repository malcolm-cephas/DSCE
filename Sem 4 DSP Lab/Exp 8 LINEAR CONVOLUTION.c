#include<stdio.h> 
int y[20];
main()
{
int m=3; int n=4; int i=0,j;
int x[15]={1,2,3,4,0,0,0,0,0,0};
int h[15]={1,2,3,0,0,0,0,0,0};
for(i=0;i<m+n-1;i++)
{ y[i]=0;
for(j=0;j<=i;j++) y[i]+=x[j]*h[i-j];
}
for(i=0;i<m+n-1;i++) printf("%d\n",y[i]);
}