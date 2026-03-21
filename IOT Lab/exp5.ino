#define IR_PIN 13
void setup() {
Serial.begin(9600); 
pinMode(IR_PIN, INPUT); 
pinMode(15, OUTPUT);
}
void loop() {
if (digitalRead(IR_PIN) == LOW) 
{ 
Serial.println(“Motion detected”); 
digitalWrite(15,HIGH);
}
else{
Serial.println(“Motion not detected”);
digitalWrite(15,LOW);
}
delay(200);
}
