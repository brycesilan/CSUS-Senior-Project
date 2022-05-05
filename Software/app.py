import time
import board
import adafruit_dht
import serial
import sys
import string
from flask import Flask, render_template, request
app = Flask(__name__)
 
# Initial the dht device, with data pin connected to:
# dhtDevice = adafruit_dht.DHT22(board.D4)
 
# you can pass DHT22 use_pulseio=False if you wouldn't like to use pulseio.
# This may be necessary on a Linux single board computer like the Raspberry Pi,
# but it will not work in CircuitPython.
dhtDevice = adafruit_dht.DHT11(board.D4, use_pulseio=False)
 

@app.route("/")
def main():
    return render_template('index.html')


@app.route("/read")
def readAll():
    # start_time = time.time()

    readings = GetTempAndHum()
    temperature_c = readings[0]
    temperature_f = readings[1]
    humidity = readings[2]

    # ph_value = GetPH()
    # ph_value = ph_value.decode('utf-8')
    ph_and_moisture = GetPHandMoisture()
    ph_value = ph_and_moisture[0]
    moisture_value = ph_and_moisture[1]
    
    # Map values from python variables to html variables and pass to flask render_template
    templateData = {
        'temperature_f' : str(round(temperature_f,2)),
        'humidity' : humidity,
        'temperature_c' : temperature_c,
        'ph_value' : ph_value,
        'moisture_value' : moisture_value, 
    }

    # print("%s seconds" % (time.time() - start_time))
    return render_template('index.html', **templateData)

# Gets the Temperature and Humidity readings from DHT11 sensor
def GetTempAndHum():
    flag = False # Flag incase we receive an error while reading

    while flag == False:
        try:
            # Read temperature and humidity from DHT11
            temp_c = dhtDevice.temperature
            temp_f = temp_c * (9 / 5) + 32
            hum = dhtDevice.humidity
            flag = True #If everything is read successfully, this is our exit condition
        
        # If an error is received, just print a message to terminal and keep reading
        except RuntimeError as error:
            # Just keep reading after an error
            print("There was an error")
            flag = False
            time.sleep(2.0) # Sampling frequency for DHT11
            continue
    
    return [temp_c, temp_f, hum]

# Reads pH and moisture values from the Arduino through serial and returns them.
def GetPHandMoisture():
    ph_value= ""  # Empty string to store pH
    moisture_value = ""  # Empty string to store moisture
    value = " " # Empty string to store line read from serial

    ser = serial.Serial('/dev/ttyUSB0', 9600, 8, 'N', 1, timeout=1) # Serial setup
    
    i = 3 # The values will be read 3 times and the last one will be kept.
    while True:
        # Read 3 times to get a better value
        while i != 0:
            value = ser.readline()
            i -=1
        value = ser.readline()
        split_value = value.decode('utf-8').split() # Splits the line read by spaces and returns them in a list

        # If the first word in the list is "pH", store it's value
        # Example string "pH Value: 7.20"
        while split_value[0] != "pH":
            value = ser.readline()
            split_value = value.decode('utf-8').split()
        ph_value = split_value[2]

        # If the first word in the list is "Moisture", store it's value
        # Example string "pH Value: 50"
        while split_value[0] != "Moisture":
            value = ser.readline()
            split_value = value.decode('utf-8').split()
        moisture_value = split_value[2]

        # Once all required values are read, just exit the forever while loop
        break
    return [ph_value, moisture_value]

if __name__ == "__main__":
   app.run(host='0.0.0.0', port=5000, debug=True)

# This function is not used anymore. It's purpose was to test out pH sensor individually. 
# def GetPH():
#     i = 3  # Counter for serial reading pH
#     ph = " "
#     ser = serial.Serial('/dev/ttyUSB0', 9600, 8, 'N', 1, timeout=1)
#     while True:
#         # Read 3 times to get a better reading
#         while i != 0:
#             ph = ser.readline()
#             i-=1
#         break

#     return ph