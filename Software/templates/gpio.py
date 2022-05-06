import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)

lightPin = 26

GPIO.setup(26, GPIO.OUT)
if GPIO.input(26) == GPIO.LOW:
    GPIO.output(26, GPIO.HIGH)
elif GPIO.input(26) == GPIO.HIGH:
    GPIO.output(26, GPIO.LOW)

# Create a dictionary called pins to store the pin number, name, and pin state:
pins = {
   6 : {'name' : 'GPIO 6', 'state' : GPIO.LOW},
   13 : {'name' : 'GPIO 13', 'state' : GPIO.LOW},
   19 : {'name' : 'GPIO 19', 'state' : GPIO.LOW},
   26 : {'name' : 'GPIO 26', 'state' : GPIO.LOW},
}

