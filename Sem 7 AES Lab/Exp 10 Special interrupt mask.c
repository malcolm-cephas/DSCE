#include <LPC17xx.h>
#include <core_cm3.h> // CMSIS core functions like __get_PRIMASK, __set_PRIMASK
#define LED_PIN (1 << 22) // P0.22 LED
/* ------------ LED Control ------------ */
void LED_Init(void) 
{
    LPC_GPIO0->FIODIR |= LED_PIN; // Set P0.22 as output
}
void LED_Toggle(void) 
{
    LPC_GPIO0->FIOPIN ^= LED_PIN;
}
/* ------------ Delay Function ------------ */
void delay(void) 
{
    volatile int i; // declare outside the loop
    for (i = 0; i < 500000; i++) 
    {
        // simple software delay
    }
}
/* ------------ SysTick Interrupt ------------ */
void SysTick_Handler(void) 
{
    LED_Toggle(); // Toggle LED every tick
}
/* ------------ Main Program ------------ */
int main(void) 
{
    SystemInit(); // CMSIS system init
    LED_Init();
    // Setup SysTick: interrupt every 10ms
    SysTick_Config(SystemCoreClock / 100);
    while (1) 
    {
        /* --- Demonstrate PRIMASK --- */
        __set_PRIMASK(1); // disable all maskable IRQs
        delay(); // LED will stop toggling
        __set_PRIMASK(0); // re-enable
        delay(); // LED will toggle again
        /* --- Demonstrate BASEPRI --- */
        __set_BASEPRI(0x40); // mask interrupts >= priority 0x40
        delay(); // SysTick may be masked (LED stops)
        __set_BASEPRI(0x00); // clear priority mask
        delay();
        /* --- Demonstrate FAULTMASK --- */
        __set_FAULTMASK(1); // mask all interrupts (except NMI)
        delay(); // LED will stop toggling
        __set_FAULTMASK(0); // restore normal operation
        delay();
    }
}