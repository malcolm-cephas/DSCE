#include <LPC17xx.h>
#define I2C_CLK 100000 // 100 kHz standard I2C clock
#define I2C_SLAVE_ADDR 0x50 // Example slave address
void I2C_Init(void) 
{
    LPC_PINCON->PINSEL1 |= (1 << 22) | (1 << 24); // P0.27 = SCL, P0.28 = SDA//(used for hardware settings only)
    LPC_I2C1->I2SCLH = 125; // Configure clock for 100 kHz (depends on PCLK)
    LPC_I2C1->I2SCLL = 125;
    LPC_I2C1->I2CONSET = (1 << 6); // Enable I2C interface
}
void I2C_Start(void) 
{
    LPC_I2C1->I2CONSET = (1 << 5); // Set START flag
    LPC_I2C1->I2CONCLR = (1 << 3); // Clear SI flag
    while (!(LPC_I2C1->I2CONSET & (1 << 3))); // Wait until SI is set
}
void I2C_Stop(void) 
{
    LPC_I2C1->I2CONSET = (1 << 4); // Set STOP flag
    LPC_I2C1->I2CONCLR = (1 << 3); // Clear SI flag
}
void I2C_WriteByte(uint8_t data) 
{
    LPC_I2C1->I2DAT = data;
    LPC_I2C1->I2CONCLR = (1 << 3); // Clear SI flag
    while (!(LPC_I2C1->I2CONSET & (1 << 3))); // Wait until SI is set
}
int main(void) 
{
    volatile int i; // Declare at the top of the function
    SystemInit();
    I2C_Init();
    while (1) 
    {
        I2C_Start();
        I2C_WriteByte((I2C_SLAVE_ADDR << 1) | 0); // Slave address + Write (0)
        I2C_WriteByte(0xCD); // Example data byte
        I2C_Stop();
        // Simple delay loop
        for (i = 0; i < 1000000; i++);
    }
    return 0;
}
