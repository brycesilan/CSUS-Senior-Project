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
    # temperature_c = dhtDevice.temperature
    # temperature_f = temperature_c * (9 / 5) + 32
    # humidity = dhtDevice.humidity
    readings = GetTempAndHum()
    temperature_c = readings[0]
    temperature_f = readings[1]
    humidity = readings[2]

    ph_value = GetPH()
    ph_value = ph_value.decode('utf-8')
    # ph_value = " "
    # ser = serial.Serial('/dev/ttyUSB0', 9600, 8, 'N', 1, timeout=1)
    # while True:
    #     while i != 0:
    #         ph_value = ser.readline()
    #         i-=1
    #     break
    
    templateData = {
        'temperature_f' : str(round(temperature_f,2)),
        'humidity' : humidity,
        'temperature_c' : temperature_c,
        'ph_value' : ph_value,
    }

    return render_template('index.html', **templateData)

def GetTempAndHum():
    flag = False

    while flag == False:
        try:
            # Print the values to the serial port
            temp_c = dhtDevice.temperature
            temp_f = temp_c * (9 / 5) + 32
            hum = dhtDevice.humidity
            flag = True
        
        except RuntimeError as error:
            # Errors happen fairly often, DHT's are hard to read, just keep going
            print("There was an error")
            flag = False
            time.sleep(2.0)
            continue
    
    return [temp_c, temp_f, hum]

            
def GetPH():
    i = 3  #Counter for serial reading pH
    ph = " "
    ser = serial.Serial('/dev/ttyUSB0', 9600, 8, 'N', 1, timeout=1)
    while True:
        while i != 0:
            ph = ser.readline()
            i-=1
        break

    return ph


if __name__ == "__main__":
   app.run(host='0.0.0.0', port=5000, debug=True)


# while True:
#     try:
#         # Print the values to the serial port
#         temperature_c = dhtDevice.temperature
#         temperature_f = temperature_c * (9 / 5) + 32
#         humidity = dhtDevice.humidity
#         print(
#             "Temp: {:.1f} F / {:.1f} C    Humidity: {}% ".format(
#                 temperature_f, temperature_c, humidity
#             )
#         )
 
#     except RuntimeError as error:
#         # Errors happen fairly often, DHT's are hard to read, just keep going
#         print(error.args[0])
#         time.sleep(2.0)
#         continue
#     except Exception as error:
#         dhtDevice.exit()
#         raise error
 
#     time.sleep(2.0)


# @app.route("/temperature")
# def temperature():
#     temperature_c = dhtDevice.temperature
#     # temperature_f = temperature_c * (9 / 5) + 32
#     # humidity = dhtDevice.humidity
    
#     return render_template('index.html', temperature_c=temperature_c)

# @app.route("/humidity")
# def humidity():
#     humidity = dhtDevice.humidity
#     # temperature_f = temperature_c * (9 / 5) + 32
#     # humidity = dhtDevice.humidity
    
#     return render_template('index.html', humidity=humidity)