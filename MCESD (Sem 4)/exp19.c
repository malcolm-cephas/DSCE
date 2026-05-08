#include <REG51xD2.H>

void main()
{
    unsigned char i = 0;

    P0 = 0x00;        /* P0 as Output port */

    while(1)
    {
        for(i = 0; i < 0xFF; i++)   /* Generate ON pulse */
        {
            P0 = i;
        }

        for(i = 0xFE; i > 0x00; i--) /* Generate OFF pulse */
        {
            P0 = i;
        }
    }
}