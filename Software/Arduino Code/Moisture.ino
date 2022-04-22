void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue = analogRead(A0);
  float voltage = sensorValue * (5.0 / 1023.0);
  float rh = (((voltage - 4.4) * -1) * 90);

  Serial.print("Voltage: ");
  Serial.println(voltage);

  Serial.print("RH: ");
  Serial.println(rh);
  delay (100);
}