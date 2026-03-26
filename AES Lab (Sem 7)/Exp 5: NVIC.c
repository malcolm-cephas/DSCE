#include "LPC17xx.h"
void SysTick_Handler(void); // SysTick ISR
void init_GPIO(void) {
// Configure P0.22 as output (LED)
LPC_PINCON->PINSEL1 &= ~(3 << 12); // P0.22 = GPIO
LPC_GPIO0->FIODIR |= (1 << 22); // Set as output
}
void init_SysTick(void) {
// Configure SysTick to trigger every 0.5s (assuming 100 MHz clock)
SysTick->LOAD = (SystemCoreClock / 2) - 1; // Reload value
SysTick->VAL = 0; // Clear current value
SysTick->CTRL = SysTick_CTRL_TICKINT_Msk | // Enable interrupt
SysTick_CTRL_ENABLE_Msk; // Enable SysTick
// No need to enable in NVIC manually, SysTick is part of Cortex core
}
// SysTick interrupt handler
void SysTick_Handler(void) {
// Toggle LED on P0.22
LPC_GPIO0->FIOPIN ^= (1 << 22);
}
int main(void) {
SystemInit(); // Setup system clock
SystemCoreClockUpdate();
init_GPIO();
init_SysTick();
while (1) {
    // Main loop does nothing, NVIC handles SysTick interrupt
__WFI(); // Wait for interrupt (optional, for low power)
}
}