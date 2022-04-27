float calibration_value = 22.84 - 0.7;


int pH_sensor = A0;
int moisture_sensor = A1;


void setup() {
  // put your setup code here, to run once:
  //Wire.begin();
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
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

  for(int i = 0; i < 10; i++)
  {
    sensor_readings[i] = analogRead(pH_sensor);
    delay(30);
  }

  for(int i = 2; i < 8; i++)
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

  for(int i = 0; i < 10; i++)
  {
    sensor_readings[i] = analogRead(moisture_sensor);
    delay(30);
  }

  for(int i = 2; i < 8; i++)
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
