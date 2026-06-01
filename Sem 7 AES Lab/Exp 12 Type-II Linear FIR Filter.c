#include <LPC17xx.h>
#define N 4 // Number of FIR filter taps
// FIR coefficients (simple moving average)
float h[N] = {0.25, 0.25, 0.25, 0.25};
// FIR input buffer
float x[N] = {0};
volatile float output=0;
volatile int i;
// Input samples (can replace with ADC input)
float input_samples[] = {100, 120, 80, 60, 200, 100, 150, 90, 50, 0};
int sample_index = 0;
int num_samples = sizeof(input_samples) / sizeof(float);
// FIR filter function
float fir_filter (float new_sample)
{
    float result = 0;
    int i;
    for (i= N-1; i > 0; i--)
    {
        x[i] = x[i - 1];
    }
    x[0] = new_sample;
    for (i=0; i < N; i++)
    {
        result += h[i] * x[i];
    }
    return result;
}
int main(void)
{
    float input;
    SystemInit();
    SystemCoreClockUpdate();
    // Configure P0.24 and P0.25 as GPIO output (relay control)
    LPC_PINCON->PINSEL1 &= ~(0xF << 16); // Clear function bits
    LPC_GPIO0->FIODIR |= (1<<24) | (1<<25); // Set as output
    while (1) 
    {
        // Simulate sample input
        if (sample_index <num_samples)
        input = input_samples [sample_index++];
        else
        input = 0;
        // Apply FIR filter
        output=fir_filter (input);
        // Relay ON if output > 100
        if (output> 100.0) 
        {
            LPC_GPIO0->FIOSET = (1<< 24) | (1 << 25);
        }
        else
        {
            LPC_GPIO0->FIOCLR = (1 << 24) | (1 << 25);
        }
        // Short delay (for Logic Analyzer waveform spacing)
        for (i=0; i < 500000; i++);
    }
}