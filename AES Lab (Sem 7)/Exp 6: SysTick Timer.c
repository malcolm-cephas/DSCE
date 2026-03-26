#include <LPC17xx.h>
#include <math.h>
#define PI 3.14159265
#define SAMPLES 100 // number of points per cycle
uint16_t sine_table[SAMPLES];
// ---------- Generate Sine Table ----------
void generate_sine_table(void) {
int i; // declare outside
for (i = 0; i < SAMPLES; i++) {
// Sine wave between 0 and 1023
sine_table[i] = (uint16_t)(512 + 511 * sin(2 * PI * i / SAMPLES));
}
}
// ---------- Initialize DAC (P0.26) ----------
void init_DAC(void) {
LPC_PINCON->PINSEL1 &= ~(3 << 20); // Clear bits
LPC_PINCON->PINSEL1 |= (2 << 20); // P0.26 -> AOUT (DAC)
}
// ---------- Send value to DAC ----------
void DAC_Output(uint16_t value) {
LPC_DAC->DACR = (value << 6); // DACR[15:6] = 10-bit value
}
// ---------- SysTick ISR ----------
volatile uint32_t index = 0;
void SysTick_Handler(void) {
DAC_Output(sine_table[index++]);
if (index >= SAMPLES) index = 0;
}
// ---------- Main ----------
int main(void) {
generate_sine_table();
init_DAC();
// SysTick: interrupt at sample rate
// Example: For 1 kHz sine wave:
// Fs = 100kHz, Samples = 100
// SysTick = SystemCoreClock / Fs = 100 MHz / 100k = 1000
SysTick_Config(SystemCoreClock / (1000 * SAMPLES));
while (1) {
// CPU free, ISR handles waveform
}
}