#include<stdio.h> #include<math.h> short N=4;
short x[4]={2,3,4,5}; float pi=3.1416; float sumre=0;
float sumim=0; float cosine=0; float sine=0;
float out_sumre[8]={0.0}; float out_sumim[8]={0.0}; void main()
{
int n,k=0; for(k=0;k<N;k++)
{
sumre=0; sumim=0;
for(n=0;n<N;n++)
{
cosine=cos(2*pi*k*n/N); sine=sin(2*pi*k*n/N); sumre=sumre+x[n]*cosine; sumim=sumim-x[n]*sine;
}
out_sumre[k]=sumre; out_sumim[k]=sumim;
printf("[%d] %7.3f %7.3f\n\n",k,out_sumre[k],out_sumim[k]);
}
}