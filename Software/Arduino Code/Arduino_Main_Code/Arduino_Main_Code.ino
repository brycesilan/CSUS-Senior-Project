#define RELAY_1_PIN 9
#define RELAY_2_PIN 10 //WATER
#define RELAY_3_PIN 11
#define RELAY_4_PIN 12 //LIGHT

#define pH_SENSOR_PIN A0
#define MOISTURE_SENSOR_PIN A1

float calibration_value = 23.50 - 0.7; //This is for the pH Sensor


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

    switch (relay) {
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

  float ph = pH_code();
  float moisture = moisture_code();

  Serial.print("pH Value: ");
  Serial.println(ph);
  Serial.print("Moisture value: ");
  Serial.println(moisture);

}

float pH_code()
{
  float ph_val = 0;
  unsigned long int avg_val = 0;
  int sensor_readings[10];
  float volt = 0;

  for (int i = 0; i < 10; i++)
  {
    sensor_readings[i] = analogRead(pH_SENSOR_PIN);
    delay(30);
  }

  for (int i = 2; i < 8; i++)
  {
    avg_val += sensor_readings[i];
  }

  volt = (float)avg_val * 5.0 / 1024 / 6;
  ph_val = -5.70 * volt + calibration_value;

  return ph_val;
}

float moisture_code()
{
  float moisture_val = 0;
  unsigned long int avg_val = 0;
  int sensor_readings[10];
  float voltage;
  float rh;
  int rh_val;

  for (int i = 0; i < 10; i++)
  {
    sensor_readings[i] = analogRead(MOISTURE_SENSOR_PIN);
    delay(30);
  }

  for (int i = 2; i < 8; i++)
  {
    avg_val += sensor_readings[i];
  }

  voltage = avg_val * (5.0 / 1023.0) / 6;
  rh = (((voltage - 4.4) * -1) * 90);

  rh = constrain(rh, 0, 100);

  rh_val = rh;
  rh_val = constrain(rh_val, 0, 100);

  return rh_val;
}
