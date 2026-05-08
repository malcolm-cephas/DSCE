#include <REG51xD2.H>

sbit inr = P3^2;   // speed increment switch
sbit dcr = P3^3;   // speed decrement switch

void main()
{
    unsigned char i = 0x80;

    P0 = 0x7F;     /* Run the motor at half speed */

    while(1)
    {
        if(!inr)
        {
            while(!inr);
            if(i > 10)
                i = i - 10;     // increase DC motor speed
        }

        if(!dcr)
        {
            while(!dcr);
            if(i < 0xF0)
                i = i + 10;     // decrease DC motor speed
        }

        P0 = i;
    }
}