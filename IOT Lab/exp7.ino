#include <WiFi.h>
const char *ssid = "SSID_Name_your_Choice";
const char *password = " Your_Choice(min 6 character) ";
IPAddress local_IP(192,168,4,22);
IPAddress gateway(192,168,4,9);
IPAddress subnet(255,255,255,0);
void setup()
{
Serial.begin(115200);
Serial.println();
Serial.print("Setting soft-AP configuration ... ");
Serial.println(WiFi.softAPConfig(local_IP, gateway, subnet) ? "Ready" : "Failed!");
Serial.print("Setting soft-AP ... ");
Serial.println(WiFi.softAP(ssid,password) ? "Ready" : "Failed!");
//WiFi.softAP(ssid);
//WiFi.softAP(ssid, password, channel, ssdi_hidden, max_connection)
Serial.print("Soft-AP IP address = ");
Serial.println(WiFi.softAPIP());
}
void loop() {
Serial.print("[Server Connected] ");
Serial.println(WiFi.softAPIP());
delay(500);
}
