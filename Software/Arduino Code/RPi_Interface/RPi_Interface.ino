#define RELAY_1_PIN 9 
#define RELAY_2_PIN 10 //WATER
#define RELAY_3_PIN 11
#define RELAY_4_PIN 12 //LIGHT


void defaultLow()
{
    digitalWrite(RELAY_1_PIN, LOW);
    digitalWrite(RELAY_2_PIN, LOW);
    digitalWrite(RELAY_3_PIN, LOW);
    digitalWrite(RELAY_4_PIN, LOW);
}

void setup()
{
  Serial.begin(9600);
  pinMode(RELAY_1_PIN, OUTPUT);
  pinMode(RELAY_2_PIN, OUTPUT);
  pinMode(RELAY_3_PIN, OUTPUT);
  pinMode(RELAY_4_PIN, OUTPUT);
  defaultLow();
}

void loop()
{
  if (Serial.available() > 0) {
    int relay = Serial.read() - '0';
    defaultLow();
    
    switch (ledNumber) {
      case 1:
        digitalWrite(RELAY_1_PIN, HIGH);
        break;
      case 2:
        digitalWrite(RELAY_2_PIN, HIGH);
        break;
      case 3:
        digitalWrite(RELAY_3_PIN, HIGH);
        break;
      case 4:
        digitalWrite(RELAY_4_PIN, HIGH);
        break;
      default: 
        // wrong pin number, do nothing
        // all OUTOUTS will be powered off
        break;
    }
  }
}
