EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 10600 7650 0    50   ~ 0
0
Text Notes 8150 7650 0    50   ~ 0
1/27/20\n
NoConn ~ 5925 2300
Text GLabel 4975 3000 0    50   Output ~ 0
UART_TX
Text GLabel 4975 3100 0    50   Input ~ 0
UART_RX
Text GLabel 4975 3400 0    50   Output ~ 0
SPI_CLK
Text GLabel 4975 3600 0    50   Input ~ 0
SPI_MISO
Text GLabel 4975 3700 0    50   Output ~ 0
SPI_CS1
Text GLabel 4975 3900 0    50   Output ~ 0
SPI_CS3
Text GLabel 4975 3800 0    50   Output ~ 0
SPI_CS2
Text GLabel 4975 3500 0    50   Output ~ 0
SPI_MOSI
Text GLabel 4700 2750 0    50   Output ~ 0
I2C_SCL
Text GLabel 4700 2650 0    50   Output ~ 0
I2C_SDA
Text GLabel 6675 2700 2    50   BiDi ~ 0
SPARE1
Text GLabel 6675 2800 2    50   BiDi ~ 0
SPARE2
Text GLabel 6675 2900 2    50   BiDi ~ 0
SPARE3
Text GLabel 6675 3000 2    50   BiDi ~ 0
SPARE4
Text GLabel 6675 3400 2    50   Input ~ 0
SPARE_ANALOG1
Text GLabel 6675 3500 2    50   Input ~ 0
SPARE_ANALOG2
Text GLabel 4975 4100 0    50   Input ~ 0
MoistureSensor_ADC
Text Notes 5400 1950 0    79   ~ 0
Microcontroller\n
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR02
U 1 1 5FEDD2C0
P 5825 4450
F 0 "#PWR02" H 5825 4200 50  0001 C CNN
F 1 "GND" H 5875 4300 50  0000 C CNN
F 2 "" H 5825 4450 50  0001 C CNN
F 3 "" H 5825 4450 50  0001 C CNN
	1    5825 4450
	1    0    0    -1  
$EndComp
NoConn ~ 6675 2500
$Sheet
S 1150 3025 2050 575 
U 6046BF11
F0 "Sensors" 50
F1 "Sensors.sch" 50
$EndSheet
$Comp
L SVM:ParticleBoron U1
U 1 1 5FD3DE54
P 5825 2400
F 0 "U1" H 5525 1650 50  0000 C CNN
F 1 "Particle" H 5575 1550 79  0000 C CNN
F 2 "Module:Particle_Boron" H 5825 3200 50  0001 C CNN
F 3 "" H 5825 3200 50  0001 C CNN
F 4 "-" H 5825 2400 50  0001 C CNN "LCSC PN"
F 5 "https://www.amazon.com/PARTICLE-Development-Endpoints-Circuitry-Bluetooth/dp/B07N96P69L/ref=sr_1_4?dchild=1&keywords=particle+boron&qid=1608715143&s=electronics&sr=1-4" H 5825 2400 50  0001 C CNN "Link"
F 6 "Particle Boron" H 5825 2400 50  0001 C CNN "MFG PN"
	1    5825 2400
	1    0    0    -1  
$EndComp
Text HLabel 3200 3150 0    50   Input ~ 0
ADC
Text HLabel 3200 3475 0    50   Output ~ 0
SCL
Text HLabel 3200 3375 0    50   Output ~ 0
SDA
Text GLabel 3200 3150 2    50   Input ~ 0
ADC
Text GLabel 3200 3475 2    50   Input ~ 0
I2C_SCL
Text GLabel 3200 3375 2    50   Input ~ 0
I2C_SDA
$Sheet
S 1175 1900 2025 525 
U 605A264C
F0 "IO" 50
F1 "IO.sch" 50
$EndSheet
Text Notes 1400 3475 0    118  ~ 0
Moisture Sensor\nWater Sensor
Text Notes 6050 7050 0    118  ~ 0
Spare IO
$Sheet
S 4750 750  2275 750 
U 609EE4E9
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
Text Notes 4925 1375 0    118  ~ 0
Power Terminal Blocks\n12V-5V SMPS\n5V to 3.3V LDO
$Comp
L power:+5V #PWR01
U 1 1 60A5BAC2
P 5725 2300
AR Path="/60A5BAC2" Ref="#PWR01"  Part="1" 
AR Path="/609EE4E9/60A5BAC2" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 5725 2150 50  0001 C CNN
F 1 "+5V" H 5740 2473 50  0000 C CNN
F 2 "" H 5725 2300 50  0001 C CNN
F 3 "" H 5725 2300 50  0001 C CNN
	1    5725 2300
	1    0    0    -1  
$EndComp
Text GLabel 6675 3100 2    50   Output ~ 0
SPARE_FET1
Text GLabel 6675 3200 2    50   Output ~ 0
SPARE_FET2
Text GLabel 6675 3300 2    50   Output ~ 0
SPARE_FET3
Text Notes 7350 7000 0    157  Italic 31
Clone Room Grow Controller
$Comp
L power:+5V #PWR0108
U 1 1 60657FCA
P 4875 2225
AR Path="/60657FCA" Ref="#PWR0108"  Part="1" 
AR Path="/609EE4E9/60657FCA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 4875 2075 50  0001 C CNN
F 1 "+5V" H 4890 2398 50  0000 C CNN
F 2 "" H 4875 2225 50  0001 C CNN
F 3 "" H 4875 2225 50  0001 C CNN
	1    4875 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 60658426
P 4950 2400
F 0 "R2" H 5000 2550 50  0000 L CNN
F 1 "2k" H 5000 2475 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4950 2400 50  0001 C CNN
F 3 "~" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 6065A3AB
P 4800 2400
F 0 "R1" H 4675 2550 50  0000 L CNN
F 1 "2k" H 4675 2475 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4800 2400 50  0001 C CNN
F 3 "~" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2300 4800 2225
Wire Wire Line
	4800 2225 4875 2225
Wire Wire Line
	4875 2225 4950 2225
Wire Wire Line
	4950 2225 4950 2300
Connection ~ 4875 2225
Wire Wire Line
	4975 2650 4800 2650
Wire Wire Line
	4800 2500 4800 2650
Connection ~ 4800 2650
Wire Wire Line
	4800 2650 4700 2650
Wire Wire Line
	4950 2500 4950 2750
Wire Wire Line
	4700 2750 4950 2750
Connection ~ 4950 2750
Wire Wire Line
	4950 2750 4975 2750
$Sheet
S 8825 2675 2025 525 
U 60689BD3
F0 "Solenoids" 50
F1 "Solenoids.sch" 50
$EndSheet
Text Notes 1700 2225 0    118  ~ 0
External IO
Text Notes 9300 3000 0    118  ~ 0
Solenoid IO
$EndSCHEMATC
