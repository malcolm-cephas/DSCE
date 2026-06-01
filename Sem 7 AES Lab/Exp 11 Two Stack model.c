#include <LPC17xx.h>
#include <core_cm3.h> // CMSIS core access functions
uint32_t processStack[128]; // Process Stack (512 bytes = 128 words)
uint32_t *psp_top; // Pointer to top of process stack
uint32_t msp_before, psp_before, control_before;
uint32_t control_after, current_psp, current_msp;
void delay(void) 
{
    volatile int i;
    for (i = 0; i < 200000; i++); // Simple software delay
}
int main(void) 
{
    LPC_GPIO0->FIODIR |= (1 << 22); // Set P0.22 as output
    msp_before = __get_MSP(); // Read Main Stack Pointer
    psp_before = __get_PSP(); // Read Process Stack Pointer
    control_before = __get_CONTROL(); // Read CONTROL register (bit1=stack select)
    psp_top = processStack + 128; // Top of process stack (stack grows down)
    __set_PSP((uint32_t)psp_top); // Load PSP with new address
    __set_CONTROL(0x02); // Bit1=1 use PSP, Bit0=0 privileged mode
    __ISB(); // Instruction Synchronization Barrier
    control_after = __get_CONTROL(); // CONTROL after switching
    current_psp = __get_PSP(); // PSP now active
    current_msp = __get_MSP(); // MSP unchanged
    while (1) 
    {
        LPC_GPIO0->FIOPIN ^= (1 << 22); // Toggle LED
        delay();
    }
}