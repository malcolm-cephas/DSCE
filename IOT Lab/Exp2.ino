#define LED_PIN 15
void setup() 
{
pinMode(LED_PIN, OUTPUT);
}
void loop() 
{
// Blink LED every 2 seconds
digitalWrite(LED_PIN, HIGH);
delay(1000);
digitalWrite(LED_PIN, LOW);
delay(1000)
}
