#include <REG51xD2.H>

void delay(unsigned int x)
{
    for(; x > 0; x--);
}

void main()
{
    unsigned char Val, i;

    P2 = 0x00;

    while(1)
    {
        Val = 0x11;

        for(i = 0; i < 4; i++)
        {
            P2 = Val;
            Val = Val >> 1;   /* Val = Val << 1; for counter clockwise */
            delay(575);
        }
    }
}