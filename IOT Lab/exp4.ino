#define soil_PIN 34
#define LED_PIN 2
int THRESHOLD=2500;
void setup() { 
pinMode(soil_PIN, OUTPUT); 
Serial.begin(115200);
}
void loop() {
int soilValue = analogRead(soil_PIN); 
Serial.print("soil mopisture: "); 
Serial.println(soilValue);
if (soilValue < THRESHOLD) 
{ 
digitalWrite(soil_PIN, HIGH); 
Serial.println(“Moisture detected”);
} 
else
{
digitalWrite(soil_PIN, LOW);
}
delay(1000);
}
Out
