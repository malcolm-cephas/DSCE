#include "WiFi.h"

void setup()
{
    Serial.begin(115200);
    WiFi.mode(WIFI_STA);
    WiFi.disconnect();
    delay(100);

    Serial.println("Setup Done");
}

void loop()
{
    
}