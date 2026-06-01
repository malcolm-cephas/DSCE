#include "LPC17xx.h"
#define PROT_BASE 0x2007E000UL // AHB SRAM, normally unused by default projects
void MemManage_Handler(void) 
{
    volatile uint32_t cfsr = SCB->CFSR; // Expect 0x00000082
    volatile uint32_t mmfar = SCB->MMFAR; // Expect 0x2007E000
    while (1); // halt for debug
}
int main(void) 
{
    // 1) Enable MemManage faults so they don't escalate to HardFault
    SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
    // (Optional) clear any stale flags
    SCB->CFSR = 0xFFFFFFFFUL; (void)SCB->CFSR;
    // 2) Configure MPU Region 0: 256B at 0x2007E000 as NO ACCESS
    MPU->RNR = 0;
    MPU->RBAR = PROT_BASE; // base must be aligned to region size
    MPU->RASR = ((8 - 1) << MPU_RASR_SIZE_Pos) | // SIZE=8 ? 2^(8)=256 B
    (0U << MPU_RASR_AP_Pos) | // AP=0b000 ? No access (priv & unpriv)
    MPU_RASR_ENABLE_Msk;
    // 3) Enable MPU; keep PRIVDEFENA so normal regions still work
    MPU->CTRL = MPU_CTRL_ENABLE_Msk | MPU_CTRL_PRIVDEFENA_Msk;
    __DSB(); __ISB();
    // 4) DATA access into protected region ? should set DACCVIOL + MMARVALID
    *(volatile uint32_t *)PROT_BASE = 0xABCDABCDUL;
    while (1);
}