from datetime import datetime
import time
import board
import adafruit_dht
import serial
import sys
import string
import RPi.GPIO as GPIO
import csv
from flask import Flask, render_template, request
app = Flask(__name__)
 

GPIO.setmode(GPIO.BCM)
lightPin = 26 # Light control pin number for the raspberry pi
waterPin = 13 # water control pin number for the raspberry pi
lightStatus = 0 # light status to be used with control.html
waterStatus = 0 # water status to be used with control.html

# dictionary to be passed to render_template on control.html
statusDict = {
        'Light': 'OFF',
        'Water': 'OFF',
    }
# Create a dictionary called pins to store the pin number, name, and pin state:
pins = {
   6 : {'name' : 'GPIO 6', 'state' : GPIO.LOW},
   13 : {'name' : 'GPIO 13', 'state' : GPIO.LOW},
   19 : {'name' : 'GPIO 19', 'state' : GPIO.LOW},
   26 : {'name' : 'GPIO 26', 'state' : GPIO.LOW},
}

# Set each pin as an output and make it low:
for pin in pins:
   GPIO.setup(pin, GPIO.OUT)
   GPIO.output(pin, GPIO.LOW)

# Initial the dht device, with data pin connected to:
# dhtDevice = adafruit_dht.DHT22(board.D4)
 
# you can pass DHT22 use_pulseio=False if you wouldn't like to use pulseio.
# This may be necessary on a Linux single board computer like the Raspberry Pi,
# but it will not work in CircuitPython.
dhtDevice = adafruit_dht.DHT11(board.D4, use_pulseio=False)
 

@app.route("/")
def main():
    # starttime = time.time()
    # while True:
    #     readAll()
    #     time.sleep(60.0 - ((time.time() - starttime) % 60.0))
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
    
    # Read current time
    timeStamp = datetime.now()
 
    # Format datetime string to remove milliseconds component
    # Split them into day and time
    timeStampDay = timeStamp.strftime("%Y-%m-%d")
    timeStampTime = timeStamp.strftime("%H:%M:%S")

    # Map values from python variables to html variables and pass to flask render_template
    templateData = {
        'timeStampDay' : timeStampDay,
        'timeStampTime' : timeStampTime,
        'temperature_f' : str(round(temperature_f,2)),
        'humidity' : humidity,
        'temperature_c' : temperature_c,
        'ph_value' : ph_value,
        'moisture_value' : moisture_value, 
    }
    LogData(templateData)
    # print("Render time: {}", datetime.now())
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
            # print("temp_f: {} - {}", temp_f, datetime.now())
            hum = dhtDevice.humidity
            # print("hum: {} - {}", hum, datetime.now())
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
        # print("ph_value: {} - {}", ph_value, datetime.now())

        # If the first word in the list is "Moisture", store it's value
        # Example string "pH Value: 50"
        while split_value[0] != "Moisture":
            value = ser.readline()
            split_value = value.decode('utf-8').split()
        moisture_value = split_value[2]
        # print("moisture: {} - {}", moisture_value, datetime.now())

        # Once all required values are read, just exit the forever while loop
        break
    return [ph_value, moisture_value]

# Logs data to the CSV file
# parameter is a dictionary that is created containing all timestamps, sensor data
def LogData(DataDictionary):
    # Day,Time,Temperature,Humidity,pH,Moisture

    # Header field names in the CSV file
    field_names = ['Day', 'Time', 'Temperature', 'Humidity', 'pH', 'Moisture']

    # Opens the CSV file in 'append' mode
    # No need to explicitly close file as 'with open' takes care of that
    with open('Sensor-Data.csv', 'a', newline='') as csvfile:
        # Create a object map of header field and data dictionary 
        writer = csv.DictWriter(csvfile, fieldnames=field_names)
        # Append data to CSV file
        writer.writerow({
            'Day' : DataDictionary['timeStampDay'], 
            'Time' : DataDictionary['timeStampTime'],
            'Temperature' : DataDictionary['temperature_f'],
            'Humidity' : DataDictionary['humidity'],
            'pH' : DataDictionary['ph_value'],
            'Moisture' : DataDictionary['moisture_value'],
            })
            
# @app.route('/light', methods=["POST"])
# def light_handler():
#     if pins['26']['state'] == GPIO.LOW:
#         GPIO.output(pins['26'], GPIO.HIGH)
#     elif pins['26']['state'] == GPIO.HIGH:
#         GPIO.output(pins['26'], GPIO.LOW)

# Function that updates the status dictionary
def status():
    global statusDict
    if lightStatus == 0:
        statusDict['Light'] = 'OFF'
    if lightStatus == 1:
        statusDict['Light'] = 'ON'
    if waterStatus == 0:
        statusDict['Water'] = 'OFF'
    if waterStatus == 1:
        statusDict['Water'] = 'ON'

# Turn on lights
@app.route('/light_on')
def light_on():
    global statusDict # Require the global variable 'statusDict' (just a python way to make global variables work)
    GPIO.output(lightPin, GPIO.HIGH) # Set pin appropriately
    global lightStatus  # Require the global variable lightStatus
    lightStatus = 1 # Update the global variable
    status() # Update the status dictionary
    return render_template('control.html', **statusDict)

@app.route('/light_off')
def light_off():
    global statusDict
    GPIO.output(lightPin, GPIO.LOW)
    global lightStatus
    lightStatus = 0
    status()
    return render_template('control.html', **statusDict)

@app.route('/water_on')
def water_on():
    global statusDict
    GPIO.output(waterPin, GPIO.HIGH)
    global waterStatus
    waterStatus = 1
    status()
    return render_template('control.html', **statusDict)

@app.route('/water_off')
def water_off():
    global statusDict
    GPIO.output(waterPin, GPIO.LOW)
    global waterStatus
    waterStatus = 0
    status()
    return render_template('control.html', **statusDict)

# Renders the control page for the first time.
@app.route('/control')
def control():
    return render_template('control.html')
    

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
