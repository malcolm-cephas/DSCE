#include <reg52.h>

sfr databus    = 0xA0;  // P2 = data bus
sfr addressbus = 0x80;  // P0 = address bus

sbit rs        = P1^6;  // Register select
sbit rw        = P1^7;  // Read/Write
sbit lcdonoff  = P1^2;
sbit busy      = P2^7;  // Busy flag

void lcdcmd(unsigned char value);
void lcddata(unsigned char value);
void lcdready(void);
void msdelay(unsigned int itime);

void main()
{
    lcdonoff = 0;

    lcdcmd(0x38);  // 2 lines, 5x7 font
    lcdcmd(0x0C);  // display ON, cursor OFF
    lcdcmd(0x06);  // cursor increment
    lcdcmd(0x01);  // clear display
    lcdcmd(0x02);  // return home
    lcdcmd(0x80);  // line 1 position 0

    lcddata('A');
    lcddata('T');
    lcddata('R');
    lcddata('I');
    lcddata('A');
}

void lcdcmd(unsigned char value)
{
    lcdready();
    databus = value;
    rs = 0;
    rw = 0;
    addressbus = 0x00;
    msdelay(1);
    addressbus = 0xFF;
}

void lcddata(unsigned char value)
{
    lcdready();
    databus = value;
    rs = 1;
    rw = 0;
    addressbus = 0x00;
    msdelay(1);
    addressbus = 0xFF;
}

void lcdready()
{
    busy = 1;
    rs = 0;
    rw = 1;

    while(busy == 1)
    {
        addressbus = 0x00;
        msdelay(1);
        addressbus = 0xFF;
    }
}

void msdelay(unsigned int itime)
{
    unsigned int i, j;

    for(i = 0; i < itime; i++)
        for(j = 0; j < 1275; j++);
}