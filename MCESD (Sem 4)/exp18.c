#include <REG51xD2.H>

void delay(unsigned int x)
{
    for(; x > 0; x--);
}

void main()
{
    unsigned char ON = 0xFF;
    unsigned char OFF = 0x00;

    P0 = ON;
    delay(500);

    P0 = OFF;
    delay(500);
}