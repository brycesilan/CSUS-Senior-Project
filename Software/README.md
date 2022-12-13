# Software for semester 2

Our approach behind this project was to provide users with the hardware (everything connected)
- custom designed control board with loaded components
- Raspberry Pi 4 (With [Client-RaspberryPi](https://github.com/brycesilan/CSUS-Senior-Project/tree/main/Software/Client-RaspberryPi) code on it)
- Arduino Nano (with the [Moisture_pH.ino](https://github.com/brycesilan/CSUS-Senior-Project/blob/main/Software/Arduino/Moisture_pH/Moisture_pH.ino) script loaded on it)
- All the controls (4 pumps, 2 lights, 1 heater and 1 fan) hooked to the control board.
- All sensors (4 soil moisture and 1 pH sensors connected to the Arduino Nano, 1 DHT11 sensor connected to Raspberry Pi)

After setting up their farm, the user would sign up on our web app that was hosted on Firebase and receive a unique userID.

They would replace "User_ID" in [firebase-config.js](https://github.com/brycesilan/CSUS-Senior-Project/blob/main/Software/Client-RaspberryPi/firebase-config.js) and run "node index.js" from the terminal.
This would start sending sensor data to Cloud Firestore and update any controls (from user interface) every 15 seconds.

The user interface provides them with:
- Live sensor readings
- Buttons to control water pumps, lights, heater, and fan.
- Graph of daily readings (from 00:00 to 23:59 for the day)
- Ability to change farm settings (Either use buttons or automate the controls)

The overall goal was to provide the users with hardware and have them setup the farm. 
Then they could sign up on our web app (hosted on Firebase) and interact with their farm from anywhere.


## User Interface
User Interface was developed using Firebase, Cloud Firestore, React, Tailwind CSS, Chart.js.

The webapp developed using Firebase allows you to have multiple users

## Raspberry Pi
Raspberry Pi code developed using Node.js, Firebase, Cloud Firestore.