#include <WiFi.h>
#include <PubSubClient.h>
#define WIFISSID " Replace_With_Your_Ssid " // Put your WifiSSID here
#define PASSWORD " Replace_With_Your_Passward" // Put your wifi password here
#define TOKEN "YOUR_TOKEN" // Put your Ubidots' TOKEN
#define MQTT_CLIENT_NAME "ESP32" // MQTT client Name, please enter your own 8-12 alphanumeric character ASCII string;
//it should be a random and unique ascii string and different from all other devices
/****************************************
* Define Constants
****************************************/
#define VARIABLE_LABEL "Variable Name 1" // Assing the variable label
#define VARIABLE_LABEL_SUBSCRIBE " Variable Name 2" // Assing the variable label
#define DEVICE_LABEL "Device Name" // Assig the device label
#define led 26 // Set the GPIO26 as LED
char mqttBroker[] = "things.ubidots.com";
char payload[100];
char topic[150];
char topicSubscribe[100];
// Space to store values to send
char str_sensor[10];
/****************************************
* Auxiliar Functions
****************************************/
WiFiClient ubidots;
PubSubClient client(ubidots);
void reconnect() 
{
    // Loop until we're reconnected
    while (!client.connected()) 
    {
        Serial.println("Attempting MQTT connection...");
        // Attemp to connect
        if (client.connect(MQTT_CLIENT_NAME, TOKEN, "")) 
        {
            Serial.println("Connected");
            client.subscribe(topicSubscribe);
        } 
        else 
        {
            Serial.print("Failed, rc=");
            Serial.print(client.state());
            Serial.println(" try again in 2 seconds");
            // Wait 2 seconds before retrying
            delay(2000);
        }
    }
}
void callback(char* topic, byte* payload, unsigned int length) 
{
    char p[length + 1];
    memcpy(p, payload, length);
    p[length] = NULL;
    String message(p);
    if (message == "0.0") 
    {
        digitalWrite(led, LOW);
    } 
    else 
    {
        digitalWrite(led, HIGH);
    }
    Serial.write(payload, length);
    Serial.println();
}
/****************************************
* Main Functions
****************************************/
void setup() 
{
    Serial.begin(115200);
    WiFi.begin(WIFISSID, PASSWORD);
    // Assign the pin as INPUT
    pinMode(led, OUTPUT);
    Serial.println();
    Serial.print("Wait for WiFi...");
    while (WiFi.status() != WL_CONNECTED) 
    {
        Serial.print(".");
        delay(500);
    }
    Serial.println("");
    Serial.println("WiFi Connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
    client.setServer(mqttBroker, 1883);
    client.setCallback(callback);
    sprintf(topicSubscribe,"/v1.6/devices/%s/%s/lv", DEVICE_LABEL,VARIABLE_LABEL_SUBSCRIBE);
    client.subscribe(topicSubscribe);
}
void loop() 
{
    if (!client.connected()) 
    {
        client.subscribe(topicSubscribe);
        reconnect();
    }
    sprintf(topic, "%s%s", "/v1.6/devices/", DEVICE_LABEL);
    sprintf(payload, "%s", ""); // Cleans the payload
    sprintf(payload, "{\"%s\":", VARIABLE_LABEL); // Adds the variable label
    float sensor = hallRead();
    Serial.print("Value of Sensor is:- ");
    Serial.println(sensor);
    /* 4 is mininum width, 2 is precision; float value is copied onto str_sensor*/
    dtostrf(sensor, 4, 2, str_sensor);
    sprintf(payload, "%s {\"value\": %s}}", payload, str_sensor); // Adds the value
    Serial.println("Publishing data to Ubidots Cloud");
    client.publish(topic, payload);
    client.loop();
    delay(1000);
}