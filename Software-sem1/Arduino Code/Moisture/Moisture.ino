//avg values
unsigned long int avgval;
int buffer_arr[10], temp;

void setup() {
  Serial.begin(9600);
}

void loop() {
  for (int i = 0; i < 10; i++)
  {
    buffer_arr[i] = analogRead(A0);
  }
  for (int i = 0; i < 9; i++)
  {
    for (int j = i + 1; j < 10; j++)
    {
      if (buffer_arr[i] > buffer_arr[j])
      {
        temp = buffer_arr[i];
        buffer_arr[i] = buffer_arr[j];
        buffer_arr[j] = temp;
      }
    }
  }

  avgval = 0;
  for (int i = 2; i < 8; i++)
    avgval += buffer_arr[i];

  float voltage = avgval * (5.0 / 1023.0) / 6;
  float rh = (((voltage - 4.4) * -1) * 90);

  rh = constrain(rh, 0, 100);
  Serial.print("Rh(average valeue)without rounding: ");
  Serial.println(rh);

  int int_rh = (rh);
  int_rh = constrain(int_rh, 0, 100);

  Serial.print("Voltage: ");
  Serial.println(voltage);

  Serial.print("RH(Average Value): ");
  Serial.println(int_rh);

  if (rh < 30)
  {
    Serial.println("Not Wet");
  }

  if (rh > 30)
  {
    Serial.println("I'm Wet");
  }


  delay (1000);
}
