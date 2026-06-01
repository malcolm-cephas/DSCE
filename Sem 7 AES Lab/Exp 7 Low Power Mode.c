#include <LPC17xx.h>
void EINT0_IRQHandler(void);
void toggleLED(uint32_t pin);
static uint32_t led_state = 0; // Track LED states in software
void init_GPIO(void) 
{
    // Configure P0.22, P0.23, P0.24, P0.25 as outputs
    LPC_PINCON->PINSEL1 &= ~((3 << 12) | (3 << 14) | (3 << 16) | (3 << 18));
    LPC_GPIO0->FIODIR |= (0x0F << 22); // Set P0.22–P0.25 as outputs
}
void init_EINT0(void) 
{
    // Configure P2.10 as EINT0
    LPC_PINCON->PINSEL4 &= ~(3 << 20);
    LPC_PINCON->PINSEL4 |= (1 << 20);
    // Falling edge sensitive
    LPC_SC->EXTMODE |= (1 << 0);
    LPC_SC->EXTPOLAR &= ~(1 << 0);
    NVIC_EnableIRQ(EINT0_IRQn);
}
int main(void) 
{
    SystemInit();
    init_GPIO();
    init_EINT0();
    while (1) 
    {
        // -------- IDLE MODE --------
        LPC_SC->PCON = 0x01;
        __WFI();
        toggleLED(22);
        // -------- SLEEP MODE --------
        LPC_SC->PCON = 0x02;
        __WFI();
        toggleLED(23);
        // -------- DEEP SLEEP MODE --------
        LPC_SC->PCON = 0x03;
        __WFI();
        toggleLED(24);
        // -------- POWER DOWN MODE --------
        LPC_SC->PCON = 0x07;
        __WFI();
        toggleLED(25);
    }
}
void EINT0_IRQHandler(void) 
{
    LPC_SC->EXTINT = (1 << 0); // Clear EINT0 interrupt flag
}
void toggleLED(uint32_t pin) 
{
    led_state ^= (1 << pin); // Flip software state
    if (led_state & (1 << pin))
    {
        LPC_GPIO0->FIOSET = (1 << pin); // Turn ON LED
    } else 
    {
        LPC_GPIO0->FIOCLR = (1 << pin); // Turn OFF LED
    }
}