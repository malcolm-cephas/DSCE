#include <LPC17xx.h> 
#define UART0_BAUDRATE 9600 

void UART0_Init(void) 
{ 
    uint32_t Fdiv; 
    // Enable power to UART0 
    LPC_SC->PCONP |= (1 << 3); 
    // Configure P0.2 as TXD0 and P0.3 as RXD0 
    LPC_PINCON->PINSEL0 &= ~((3 << 4) | (3 << 6)); 
    LPC_PINCON->PINSEL0 |= (1 << 4) | (1 << 6); 
    // Calculate baud rate divisor 
    Fdiv = (25000000 / (16 * UART0_BAUDRATE)); 
    // Configure UART0: 8-bit data, 1 stop bit, no parity, DLAB = 1 
    LPC_UART0->LCR = 0x83; 
    LPC_UART0->DLM = Fdiv / 256; 
    LPC_UART0->DLL = Fdiv % 256; 
    LPC_UART0->LCR = 0x03; // DLAB = 0 
    // Enable FIFO 
    LPC_UART0->FCR = 0x07; 
}

void UART0_SendChar(char c) 
{ 
    while (!(LPC_UART0->LSR & (1 << 5))); // Wait until THR is empty 
    LPC_UART0->THR = c; 
} 

void UART0_SendString(const char* str) 
{ 
    while (*str) 
    { 
        UART0_SendChar(*str++); 
    } 
} 

int main(void) 
{ 
    int i; // Declare variables at the top of the function 
    UART0_Init();
    while (1) 
    { 
        UART0_SendString("INTERSTELLAR\r\n"); 
        for (i = 0; i < 1000000; i++); // Simple delay loop 
    } 
}