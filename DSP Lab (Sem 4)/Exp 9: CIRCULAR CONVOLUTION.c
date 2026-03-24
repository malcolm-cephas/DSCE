#include<stdio.h>
int m,n,x[30],h[30],y[30],i,j,k; void main()
{
printf(" Enter the length of the first sequence\n"); scanf("%d",&m);
printf(" Enter the length of the second sequence\n"); scanf("%d",&n);
printf(" Enter the first sequence\n");
for(i=0;i<m;i++) scanf("%d",&x[i]);
printf(" Enter the second sequence\n"); for(j=0;j<n;j++)
scanf("%d",&h[j]);
if(m-n!=0)
{
if(m>n)
{
for(i=n;i<m;i++) h[i]=0;
n=m;
}
for(i=m;i<n;i++) x[i]=0;
m=n;
}
printf("the circular convolution is\n");
for(i=0;i<n;i++)
{ y[i]=0;
for(j=0;j<n;j++)
{
k=i-j; if(k<0) k=k+n;
y[i]=y[i]+x[j]*h[k];
}
printf("%d \t",y[i]);
}
}