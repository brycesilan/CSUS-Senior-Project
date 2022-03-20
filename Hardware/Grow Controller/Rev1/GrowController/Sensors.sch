EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60569DB2
P 2100 1500
AR Path="/60569DB2" Ref="C?"  Part="1" 
AR Path="/5FDBCBB6/60569DB2" Ref="C?"  Part="1" 
AR Path="/60470140/60569DB2" Ref="C?"  Part="1" 
AR Path="/6046BF11/60569DB2" Ref="C1"  Part="1" 
F 0 "C1" V 1950 1700 50  0000 R CNN
F 1 ".1uF" V 2050 1700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2100 1500 50  0001 C CNN
F 3 "~" H 2100 1500 50  0001 C CNN
F 4 "C1525" H 2100 1500 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL05B104KO5NNNC_100nF-104-10-16V_C1525.html/?href=jlc-SMT" H 2100 1500 50  0001 C CNN "Link"
F 6 "CL05B104KO5NNNC" H 2100 1500 50  0001 C CNN "MFG PN"
	1    2100 1500
	0    1    1    0   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60569DC1
P 2200 1500
AR Path="/60569DC1" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60569DC1" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60569DC1" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60569DC1" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2200 1250 50  0001 C CNN
F 1 "GND" H 2205 1327 50  0000 C CNN
F 2 "" H 2200 1500 50  0001 C CNN
F 3 "" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3375 1250 3325
Wire Wire Line
	1300 3375 1250 3375
Wire Wire Line
	1250 3275 1300 3275
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60569DD1
P 1175 3325
AR Path="/60569DD1" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60569DD1" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60569DD1" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60569DD1" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1175 3075 50  0001 C CNN
F 1 "GND" H 1150 3375 50  0000 C CNN
F 2 "" H 1175 3325 50  0001 C CNN
F 3 "" H 1175 3325 50  0001 C CNN
	1    1175 3325
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60569DD7
P 2000 1500
AR Path="/60569DD7" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60569DD7" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60569DD7" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 2000 1350 50  0001 C CNN
F 1 "+5V" H 2015 1673 50  0000 C CNN
F 2 "" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0001 C CNN
	1    2000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1575 2000 1500
Connection ~ 2000 1500
Wire Wire Line
	1250 3325 1175 3325
Connection ~ 1250 3325
Wire Wire Line
	1250 3325 1250 3275
Wire Wire Line
	925  3375 925  3475
$Comp
L power:+5V #PWR?
U 1 1 60569DFB
P 925 3375
AR Path="/60569DFB" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60569DFB" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60569DFB" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 925 3225 50  0001 C CNN
F 1 "+5V" H 940 3548 50  0000 C CNN
F 2 "" H 925 3375 50  0001 C CNN
F 3 "" H 925 3375 50  0001 C CNN
	1    925  3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  3475 1300 3475
Text GLabel 2700 1875 2    50   Output ~ 0
LED9_1xB0
Text GLabel 2700 1975 2    50   Output ~ 0
LED10_1xB1
Text GLabel 2700 2075 2    50   Output ~ 0
LED11_1xB2
Text GLabel 2700 2175 2    50   Output ~ 0
LED12_1xB3
$Comp
L SN74LV4051ADR:SN74LV4051ADR U4
U 1 1 60790936
P 5450 2550
F 0 "U4" H 5450 3125 50  0000 C CNN
F 1 "SN74LV4051ADR" H 5450 3025 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5450 2550 50  0001 L BNN
F 3 "" H 5450 2550 50  0001 L BNN
	1    5450 2550
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60797831
P 2100 4400
AR Path="/60797831" Ref="C?"  Part="1" 
AR Path="/5FDBCBB6/60797831" Ref="C?"  Part="1" 
AR Path="/60470140/60797831" Ref="C?"  Part="1" 
AR Path="/6046BF11/60797831" Ref="C2"  Part="1" 
F 0 "C2" V 1950 4600 50  0000 R CNN
F 1 ".1uF" V 2050 4600 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2100 4400 50  0001 C CNN
F 3 "~" H 2100 4400 50  0001 C CNN
F 4 "C1525" H 2100 4400 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL05B104KO5NNNC_100nF-104-10-16V_C1525.html/?href=jlc-SMT" H 2100 4400 50  0001 C CNN "Link"
F 6 "CL05B104KO5NNNC" H 2100 4400 50  0001 C CNN "MFG PN"
	1    2100 4400
	0    1    1    0   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60797840
P 2200 4400
AR Path="/60797840" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60797840" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60797840" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60797840" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2200 4150 50  0001 C CNN
F 1 "GND" H 2205 4227 50  0000 C CNN
F 2 "" H 2200 4400 50  0001 C CNN
F 3 "" H 2200 4400 50  0001 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60797854
P 2000 4400
AR Path="/60797854" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60797854" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60797854" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2000 4250 50  0001 C CNN
F 1 "+5V" H 2015 4573 50  0000 C CNN
F 2 "" H 2000 4400 50  0001 C CNN
F 3 "" H 2000 4400 50  0001 C CNN
	1    2000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4475 2000 4400
Connection ~ 2000 4400
Wire Wire Line
	925  6175 925  6275
$Comp
L power:+5V #PWR?
U 1 1 60797867
P 925 6175
AR Path="/60797867" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60797867" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60797867" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 925 6025 50  0001 C CNN
F 1 "+5V" H 940 6348 50  0000 C CNN
F 2 "" H 925 6175 50  0001 C CNN
F 3 "" H 925 6175 50  0001 C CNN
	1    925  6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  6275 1300 6275
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6079784E
P 1225 6500
AR Path="/6079784E" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6079784E" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6079784E" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6079784E" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1225 6250 50  0001 C CNN
F 1 "GND" H 1225 6350 50  0000 C CNN
F 2 "" H 1225 6500 50  0001 C CNN
F 3 "" H 1225 6500 50  0001 C CNN
	1    1225 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6175 1225 6175
Wire Wire Line
	1225 6175 1225 6375
Wire Wire Line
	1300 6375 1225 6375
Connection ~ 1225 6375
Wire Wire Line
	1225 6375 1225 6500
Text GLabel 2700 5175 2    50   Output ~ 0
Mux1A_2xB4
Text GLabel 2700 5275 2    50   Output ~ 0
Mux1B_2xB5
Text GLabel 2700 5375 2    50   Output ~ 0
Mux1C_2xB6
Text GLabel 2700 4775 2    50   Output ~ 0
Mux2A_2xB0
Text GLabel 2700 4875 2    50   Output ~ 0
Mux2B_2xB1
Text GLabel 2700 4975 2    50   Output ~ 0
Mux2C_2xB2
Wire Wire Line
	5400 3650 5400 3700
Wire Wire Line
	5400 3700 5450 3700
Wire Wire Line
	5500 3700 5500 3650
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 607AA775
P 5450 3700
AR Path="/607AA775" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/607AA775" Ref="#PWR?"  Part="1" 
AR Path="/60470140/607AA775" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/607AA775" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5450 3450 50  0001 C CNN
F 1 "GND" H 5455 3527 50  0000 C CNN
F 2 "" H 5450 3700 50  0001 C CNN
F 3 "" H 5450 3700 50  0001 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
Connection ~ 5450 3700
Wire Wire Line
	5450 3700 5500 3700
Text GLabel 2700 5075 2    50   Output ~ 0
Mux1INH_2xB3
Text GLabel 2700 5475 2    50   Output ~ 0
Mux2INH_2xB7
Text GLabel 4750 2700 0    50   Input ~ 0
Mux2INH_2xB7
Wire Notes Line
	7850 650  7875 650 
Wire Notes Line
	2150 6525 2125 6525
Text GLabel 2700 3475 2    50   Output ~ 0
LED8_1xA7
Text GLabel 2700 2275 2    50   Output ~ 0
LED13_1xB4
Text GLabel 2700 2375 2    50   Output ~ 0
LED14_1xB5
Text GLabel 2700 2475 2    50   Output ~ 0
LED15_1xB6
Text GLabel 2700 2575 2    50   Output ~ 0
LED16_1xB7
Text GLabel 2700 2775 2    50   Output ~ 0
LED1_1xA0
Text GLabel 2700 2875 2    50   Output ~ 0
LED2_1xA1
Text GLabel 2700 2975 2    50   Output ~ 0
LED3_1xA2
Text GLabel 2700 3075 2    50   Output ~ 0
LED4_1xA3
Text GLabel 2700 3175 2    50   Output ~ 0
LED5_1xA4
Text GLabel 2700 3275 2    50   Output ~ 0
LED6_1xA5
Text GLabel 2700 3375 2    50   Output ~ 0
LED7_1xA6
$Comp
L Interface_Expansion:MCP23017_SO U?
U 1 1 607DDCC0
P 2000 2675
AR Path="/607DDCC0" Ref="U?"  Part="1" 
AR Path="/5FDBCBB6/607DDCC0" Ref="U?"  Part="1" 
AR Path="/60470140/607DDCC0" Ref="U?"  Part="1" 
AR Path="/6046BF11/607DDCC0" Ref="U2"  Part="1" 
F 0 "U2" H 2000 3125 50  0000 C CNN
F 1 "MCP23017" H 2000 3025 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2200 1675 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2200 1575 50  0001 L CNN
F 4 "C47023" H 2000 2675 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Interface-I-O-Expanders_Microchip-Tech-MCP23017-E-SO_C47023.html" H 2000 2675 50  0001 C CNN "Link"
F 6 "MCP23017" H 2000 2675 50  0001 C CNN "MFG PN"
	1    2000 2675
	1    0    0    -1  
$EndComp
NoConn ~ 1300 2575
NoConn ~ 1300 2475
$Comp
L Interface_Expansion:MCP23017_SO U?
U 1 1 60812DD3
P 2000 5575
AR Path="/60812DD3" Ref="U?"  Part="1" 
AR Path="/5FDBCBB6/60812DD3" Ref="U?"  Part="1" 
AR Path="/60470140/60812DD3" Ref="U?"  Part="1" 
AR Path="/6046BF11/60812DD3" Ref="U3"  Part="1" 
F 0 "U3" H 2000 6025 50  0000 C CNN
F 1 "MCP23017" H 2000 5925 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2200 4575 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2200 4475 50  0001 L CNN
F 4 "C47023" H 2000 5575 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Interface-I-O-Expanders_Microchip-Tech-MCP23017-E-SO_C47023.html" H 2000 5575 50  0001 C CNN "Link"
F 6 "MCP23017" H 2000 5575 50  0001 C CNN "MFG PN"
	1    2000 5575
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60815033
P 2000 6675
AR Path="/60815033" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60815033" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60815033" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60815033" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2000 6425 50  0001 C CNN
F 1 "GND" H 2000 6525 50  0000 C CNN
F 2 "" H 2000 6675 50  0001 C CNN
F 3 "" H 2000 6675 50  0001 C CNN
	1    2000 6675
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60815C0C
P 2000 3775
AR Path="/60815C0C" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60815C0C" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60815C0C" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60815C0C" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 2000 3525 50  0001 C CNN
F 1 "GND" H 2000 3625 50  0000 C CNN
F 2 "" H 2000 3775 50  0001 C CNN
F 3 "" H 2000 3775 50  0001 C CNN
	1    2000 3775
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60820A6D
P 5550 1375
AR Path="/60820A6D" Ref="C?"  Part="1" 
AR Path="/5FDBCBB6/60820A6D" Ref="C?"  Part="1" 
AR Path="/60470140/60820A6D" Ref="C?"  Part="1" 
AR Path="/6046BF11/60820A6D" Ref="C3"  Part="1" 
F 0 "C3" V 5400 1575 50  0000 R CNN
F 1 ".1uF" V 5500 1575 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5550 1375 50  0001 C CNN
F 3 "~" H 5550 1375 50  0001 C CNN
F 4 "C1525" H 5550 1375 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL05B104KO5NNNC_100nF-104-10-16V_C1525.html/?href=jlc-SMT" H 5550 1375 50  0001 C CNN "Link"
F 6 "CL05B104KO5NNNC" H 5550 1375 50  0001 C CNN "MFG PN"
	1    5550 1375
	0    1    1    0   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60820A73
P 5650 1375
AR Path="/60820A73" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60820A73" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60820A73" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60820A73" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5650 1125 50  0001 C CNN
F 1 "GND" H 5655 1202 50  0000 C CNN
F 2 "" H 5650 1375 50  0001 C CNN
F 3 "" H 5650 1375 50  0001 C CNN
	1    5650 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1450 5450 1375
Text GLabel 2700 5775 2    50   Output ~ 0
WaterSensorHIGH_2xA1
Text GLabel 2700 5675 2    50   Output ~ 0
WaterSensorLOW_2xA0
Text GLabel 6150 2900 2    50   Input ~ 0
SENSOR1
Text GLabel 6150 2800 2    50   Input ~ 0
SENSOR2
Text GLabel 6150 2700 2    50   Input ~ 0
SENSOR3
Text GLabel 6150 2600 2    50   Input ~ 0
SENSOR4
Text GLabel 6150 2500 2    50   Input ~ 0
SENSOR5
Text GLabel 6150 2400 2    50   Input ~ 0
SENSOR6
Text GLabel 6150 2300 2    50   Input ~ 0
SENSOR7
Text GLabel 6150 2200 2    50   Input ~ 0
SENSOR8
$Comp
L SN74LV4051ADR:SN74LV4051ADR U5
U 1 1 6083E255
P 5425 5575
F 0 "U5" H 5425 6150 50  0000 C CNN
F 1 "SN74LV4051ADR" H 5425 6050 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5425 5575 50  0001 L BNN
F 3 "" H 5425 5575 50  0001 L BNN
	1    5425 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 6675 5375 6725
Wire Wire Line
	5375 6725 5425 6725
Wire Wire Line
	5475 6725 5475 6675
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6083E25E
P 5425 6725
AR Path="/6083E25E" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6083E25E" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6083E25E" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6083E25E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5425 6475 50  0001 C CNN
F 1 "GND" H 5430 6552 50  0000 C CNN
F 2 "" H 5425 6725 50  0001 C CNN
F 3 "" H 5425 6725 50  0001 C CNN
	1    5425 6725
	1    0    0    -1  
$EndComp
Connection ~ 5425 6725
Wire Wire Line
	5425 6725 5475 6725
Text GLabel 4725 5525 0    50   Input ~ 0
Mux1B_2xB5
Text GLabel 4725 5625 0    50   Input ~ 0
Mux1C_2xB6
Text GLabel 4725 5725 0    50   Input ~ 0
Mux1INH_2xB3
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 6083E273
P 5525 4400
AR Path="/6083E273" Ref="C?"  Part="1" 
AR Path="/5FDBCBB6/6083E273" Ref="C?"  Part="1" 
AR Path="/60470140/6083E273" Ref="C?"  Part="1" 
AR Path="/6046BF11/6083E273" Ref="C4"  Part="1" 
F 0 "C4" V 5375 4600 50  0000 R CNN
F 1 ".1uF" V 5475 4600 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5525 4400 50  0001 C CNN
F 3 "~" H 5525 4400 50  0001 C CNN
F 4 "C1525" H 5525 4400 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL05B104KO5NNNC_100nF-104-10-16V_C1525.html/?href=jlc-SMT" H 5525 4400 50  0001 C CNN "Link"
F 6 "CL05B104KO5NNNC" H 5525 4400 50  0001 C CNN "MFG PN"
	1    5525 4400
	0    1    1    0   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6083E279
P 5625 4400
AR Path="/6083E279" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6083E279" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6083E279" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6083E279" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5625 4150 50  0001 C CNN
F 1 "GND" H 5630 4227 50  0000 C CNN
F 2 "" H 5625 4400 50  0001 C CNN
F 3 "" H 5625 4400 50  0001 C CNN
	1    5625 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5425 4475 5425 4400
Text GLabel 6125 5925 2    50   Input ~ 0
SENSOR9
Text GLabel 6125 5825 2    50   Input ~ 0
SENSOR10
Text GLabel 6125 5725 2    50   Input ~ 0
SENSOR11
Text GLabel 6125 5625 2    50   Input ~ 0
SENSOR12
Text GLabel 6125 5525 2    50   Input ~ 0
SENSOR13
Text GLabel 6125 5425 2    50   Input ~ 0
SENSOR14
Text GLabel 6125 5325 2    50   Input ~ 0
SENSOR15
Text GLabel 6125 5225 2    50   Input ~ 0
SENSOR16
Text Notes 1475 800  0    118  ~ 0
Digital Control
Text Notes 5000 800  0    118  ~ 0
Analog MUXs
Wire Notes Line
	7200 6400 7200 650 
Wire Notes Line
	11025 4900 11025 4875
Text Notes 8050 800  0    118  ~ 0
Daughterboard Connectors
Wire Wire Line
	925  2675 925  2775
$Comp
L power:+5V #PWR?
U 1 1 604B174F
P 925 2675
AR Path="/604B174F" Ref="#PWR?"  Part="1" 
AR Path="/60470140/604B174F" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/604B174F" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 925 2525 50  0001 C CNN
F 1 "+5V" H 940 2848 50  0000 C CNN
F 2 "" H 925 2675 50  0001 C CNN
F 3 "" H 925 2675 50  0001 C CNN
	1    925  2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  2775 1300 2775
Wire Wire Line
	925  5575 925  5675
$Comp
L power:+5V #PWR?
U 1 1 604B22DF
P 925 5575
AR Path="/604B22DF" Ref="#PWR?"  Part="1" 
AR Path="/60470140/604B22DF" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/604B22DF" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 925 5425 50  0001 C CNN
F 1 "+5V" H 940 5748 50  0000 C CNN
F 2 "" H 925 5575 50  0001 C CNN
F 3 "" H 925 5575 50  0001 C CNN
	1    925  5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  5675 1300 5675
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 604F169C
P 9150 1600
F 0 "J1" H 9200 2025 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 9200 2026 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 9150 1600 50  0001 C CNN
F 3 "~" H 9150 1600 50  0001 C CNN
	1    9150 1600
	1    0    0    -1  
$EndComp
Text GLabel 9450 1500 2    50   Input ~ 0
LED4_1xA3
Text GLabel 9450 1400 2    50   Input ~ 0
LED3_1xA2
Text GLabel 8950 1400 0    50   Input ~ 0
LED1_1xA0
$Comp
L power:+5V #PWR?
U 1 1 6050F459
P 8900 1250
AR Path="/6050F459" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6050F459" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6050F459" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 8900 1100 50  0001 C CNN
F 1 "+5V" H 8915 1423 50  0000 C CNN
F 2 "" H 8900 1250 50  0001 C CNN
F 3 "" H 8900 1250 50  0001 C CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1250 8900 1300
Wire Wire Line
	8900 1300 8950 1300
$Comp
L power:+5V #PWR?
U 1 1 60519506
P 9500 1250
AR Path="/60519506" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60519506" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60519506" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 9500 1100 50  0001 C CNN
F 1 "+5V" H 9515 1423 50  0000 C CNN
F 2 "" H 9500 1250 50  0001 C CNN
F 3 "" H 9500 1250 50  0001 C CNN
	1    9500 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 1250 9500 1300
Wire Wire Line
	9500 1300 9450 1300
Text GLabel 8950 1600 0    50   Output ~ 0
SENSOR1
Text GLabel 9450 1700 2    50   Output ~ 0
SENSOR3
Text GLabel 8950 1800 0    50   Output ~ 0
SENSOR2
Text GLabel 9450 1900 2    50   Output ~ 0
SENSOR4
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 60534764
P 9125 3025
F 0 "J2" H 9175 3450 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 9175 3451 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 9125 3025 50  0001 C CNN
F 3 "~" H 9125 3025 50  0001 C CNN
	1    9125 3025
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6053476E
P 8875 2675
AR Path="/6053476E" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6053476E" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6053476E" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 8875 2525 50  0001 C CNN
F 1 "+5V" H 8890 2848 50  0000 C CNN
F 2 "" H 8875 2675 50  0001 C CNN
F 3 "" H 8875 2675 50  0001 C CNN
	1    8875 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 2675 8875 2725
Wire Wire Line
	8875 2725 8925 2725
$Comp
L power:+5V #PWR?
U 1 1 60534776
P 9475 2675
AR Path="/60534776" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60534776" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60534776" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 9475 2525 50  0001 C CNN
F 1 "+5V" H 9490 2848 50  0000 C CNN
F 2 "" H 9475 2675 50  0001 C CNN
F 3 "" H 9475 2675 50  0001 C CNN
	1    9475 2675
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9475 2675 9475 2725
Wire Wire Line
	9475 2725 9425 2725
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J3
U 1 1 60539C08
P 9125 4425
F 0 "J3" H 9175 4850 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 9175 4851 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 9125 4425 50  0001 C CNN
F 3 "~" H 9125 4425 50  0001 C CNN
	1    9125 4425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60539C12
P 8875 4075
AR Path="/60539C12" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60539C12" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60539C12" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 8875 3925 50  0001 C CNN
F 1 "+5V" H 8890 4248 50  0000 C CNN
F 2 "" H 8875 4075 50  0001 C CNN
F 3 "" H 8875 4075 50  0001 C CNN
	1    8875 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 4075 8875 4125
Wire Wire Line
	8875 4125 8925 4125
$Comp
L power:+5V #PWR?
U 1 1 60539C1A
P 9475 4075
AR Path="/60539C1A" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60539C1A" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60539C1A" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 9475 3925 50  0001 C CNN
F 1 "+5V" H 9490 4248 50  0000 C CNN
F 2 "" H 9475 4075 50  0001 C CNN
F 3 "" H 9475 4075 50  0001 C CNN
	1    9475 4075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9475 4075 9475 4125
Wire Wire Line
	9475 4125 9425 4125
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J4
U 1 1 6053FBBF
P 9125 5800
F 0 "J4" H 9175 6225 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 9175 6226 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 9125 5800 50  0001 C CNN
F 3 "~" H 9125 5800 50  0001 C CNN
	1    9125 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6053FBC9
P 8875 5450
AR Path="/6053FBC9" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6053FBC9" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6053FBC9" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 8875 5300 50  0001 C CNN
F 1 "+5V" H 8890 5623 50  0000 C CNN
F 2 "" H 8875 5450 50  0001 C CNN
F 3 "" H 8875 5450 50  0001 C CNN
	1    8875 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 5450 8875 5500
Wire Wire Line
	8875 5500 8925 5500
$Comp
L power:+5V #PWR?
U 1 1 6053FBD1
P 9475 5450
AR Path="/6053FBD1" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6053FBD1" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6053FBD1" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 9475 5300 50  0001 C CNN
F 1 "+5V" H 9490 5623 50  0000 C CNN
F 2 "" H 9475 5450 50  0001 C CNN
F 3 "" H 9475 5450 50  0001 C CNN
	1    9475 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9475 5450 9475 5500
Wire Wire Line
	9475 5500 9425 5500
Text GLabel 8950 1500 0    50   Input ~ 0
LED2_1xA1
Text GLabel 9425 2925 2    50   Input ~ 0
LED8_1xA7
Text GLabel 8925 2825 0    50   Input ~ 0
LED5_1xA4
Text GLabel 9425 2825 2    50   Input ~ 0
LED7_1xA6
Text GLabel 8925 2925 0    50   Input ~ 0
LED6_1xA5
Text GLabel 8925 3025 0    50   Output ~ 0
SENSOR5
Text GLabel 9425 3125 2    50   Output ~ 0
SENSOR7
Text GLabel 8925 3225 0    50   Output ~ 0
SENSOR6
Text GLabel 9425 3325 2    50   Output ~ 0
SENSOR8
Text GLabel 8925 4225 0    50   Input ~ 0
LED9_1xB0
Text GLabel 9425 4225 2    50   Input ~ 0
LED11_1xB2
Text GLabel 8925 4325 0    50   Input ~ 0
LED10_1xB1
Text GLabel 9425 4325 2    50   Input ~ 0
LED12_1xB3
Text GLabel 8925 4425 0    50   Output ~ 0
SENSOR9
Text GLabel 9425 4525 2    50   Output ~ 0
SENSOR11
Text GLabel 8925 4625 0    50   Output ~ 0
SENSOR10
Text GLabel 9425 4725 2    50   Output ~ 0
SENSOR12
Text GLabel 8925 5600 0    50   Input ~ 0
LED13_1xB4
Text GLabel 9425 5600 2    50   Input ~ 0
LED15_1xB6
Text GLabel 8925 5700 0    50   Input ~ 0
LED14_1xB5
Text GLabel 9425 5700 2    50   Input ~ 0
LED16_1xB7
Text GLabel 8925 5800 0    50   Output ~ 0
SENSOR13
Text GLabel 9425 5900 2    50   Output ~ 0
SENSOR15
Text GLabel 8925 6000 0    50   Output ~ 0
SENSOR14
Text GLabel 9425 6100 2    50   Output ~ 0
SENSOR16
Text GLabel 6125 6175 2    50   Output ~ 0
MoistureSensor_ADC
Text GLabel 6150 3150 2    50   Output ~ 0
MoistureSensor_ADC
NoConn ~ 2700 5875
NoConn ~ 2700 5975
NoConn ~ 2700 6075
NoConn ~ 2700 6175
NoConn ~ 2700 6275
NoConn ~ 2700 6375
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6051E80D
P 8450 1975
AR Path="/6051E80D" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6051E80D" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6051E80D" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6051E80D" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 8450 1725 50  0001 C CNN
F 1 "GND" H 8455 1802 50  0000 C CNN
F 2 "" H 8450 1975 50  0001 C CNN
F 3 "" H 8450 1975 50  0001 C CNN
	1    8450 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1700 8450 1900
Wire Wire Line
	8950 1700 8450 1700
Wire Wire Line
	8950 1900 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8450 1975
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 605244B7
P 9975 1950
AR Path="/605244B7" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/605244B7" Ref="#PWR?"  Part="1" 
AR Path="/60470140/605244B7" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/605244B7" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 9975 1700 50  0001 C CNN
F 1 "GND" H 9980 1777 50  0000 C CNN
F 2 "" H 9975 1950 50  0001 C CNN
F 3 "" H 9975 1950 50  0001 C CNN
	1    9975 1950
	-1   0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60550E9C
P 8425 3400
AR Path="/60550E9C" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60550E9C" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60550E9C" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60550E9C" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 8425 3150 50  0001 C CNN
F 1 "GND" H 8430 3227 50  0000 C CNN
F 2 "" H 8425 3400 50  0001 C CNN
F 3 "" H 8425 3400 50  0001 C CNN
	1    8425 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3125 8425 3325
Wire Wire Line
	8925 3125 8425 3125
Wire Wire Line
	8925 3325 8425 3325
Connection ~ 8425 3325
Wire Wire Line
	8425 3325 8425 3400
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60554107
P 8425 4800
AR Path="/60554107" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60554107" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60554107" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60554107" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 8425 4550 50  0001 C CNN
F 1 "GND" H 8430 4627 50  0000 C CNN
F 2 "" H 8425 4800 50  0001 C CNN
F 3 "" H 8425 4800 50  0001 C CNN
	1    8425 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 4525 8425 4725
Wire Wire Line
	8925 4525 8425 4525
Wire Wire Line
	8925 4725 8425 4725
Connection ~ 8425 4725
Wire Wire Line
	8425 4725 8425 4800
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6055761C
P 8425 6175
AR Path="/6055761C" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6055761C" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6055761C" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6055761C" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 8425 5925 50  0001 C CNN
F 1 "GND" H 8430 6002 50  0000 C CNN
F 2 "" H 8425 6175 50  0001 C CNN
F 3 "" H 8425 6175 50  0001 C CNN
	1    8425 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 5900 8425 6100
Wire Wire Line
	8925 5900 8425 5900
Wire Wire Line
	8925 6100 8425 6100
Connection ~ 8425 6100
Wire Wire Line
	8425 6100 8425 6175
Wire Wire Line
	9975 1600 9975 1800
Wire Wire Line
	9450 1600 9975 1600
Wire Wire Line
	9450 1800 9975 1800
Connection ~ 9975 1800
Wire Wire Line
	9975 1800 9975 1950
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60561590
P 9950 3375
AR Path="/60561590" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60561590" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60561590" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60561590" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 9950 3125 50  0001 C CNN
F 1 "GND" H 9955 3202 50  0000 C CNN
F 2 "" H 9950 3375 50  0001 C CNN
F 3 "" H 9950 3375 50  0001 C CNN
	1    9950 3375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 3025 9950 3225
Wire Wire Line
	9425 3025 9950 3025
Wire Wire Line
	9425 3225 9950 3225
Connection ~ 9950 3225
Wire Wire Line
	9950 3225 9950 3375
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60564C6E
P 9950 4775
AR Path="/60564C6E" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/60564C6E" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60564C6E" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60564C6E" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 9950 4525 50  0001 C CNN
F 1 "GND" H 9955 4602 50  0000 C CNN
F 2 "" H 9950 4775 50  0001 C CNN
F 3 "" H 9950 4775 50  0001 C CNN
	1    9950 4775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 4425 9950 4625
Wire Wire Line
	9425 4425 9950 4425
Wire Wire Line
	9425 4625 9950 4625
Connection ~ 9950 4625
Wire Wire Line
	9950 4625 9950 4775
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6056667F
P 9950 6150
AR Path="/6056667F" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/6056667F" Ref="#PWR?"  Part="1" 
AR Path="/60470140/6056667F" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/6056667F" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 9950 5900 50  0001 C CNN
F 1 "GND" H 9955 5977 50  0000 C CNN
F 2 "" H 9950 6150 50  0001 C CNN
F 3 "" H 9950 6150 50  0001 C CNN
	1    9950 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 5800 9950 6000
Wire Wire Line
	9425 5800 9950 5800
Wire Wire Line
	9425 6000 9950 6000
Connection ~ 9950 6000
Wire Wire Line
	9950 6000 9950 6150
Text GLabel 1300 4875 0    50   Input ~ 0
I2C_SCL
Text GLabel 1300 4775 0    50   Input ~ 0
I2C_SDA
Text GLabel 1300 1975 0    50   Input ~ 0
I2C_SCL
Text GLabel 1300 1875 0    50   Input ~ 0
I2C_SDA
Text Notes 650  7425 0    50   ~ 10
Notes:\n\nMCP23017 U3 should have GPB0/GPB1 water sensor inputs configured to pull up in software
Wire Notes Line
	3700 625  3700 7025
Wire Notes Line
	3700 7025 3725 7025
Text GLabel 4750 2400 0    50   Input ~ 0
Mux2A_2xB0
Text GLabel 4750 2500 0    50   Input ~ 0
Mux2B_2xB1
Text GLabel 4750 2600 0    50   Input ~ 0
Mux2C_2xB2
$Comp
L power:+3.3VA #PWR0118
U 1 1 60A3BEC9
P 5425 4400
AR Path="/6046BF11/60A3BEC9" Ref="#PWR0118"  Part="1" 
AR Path="/60A3BEC9" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A3BEC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 5425 4250 50  0001 C CNN
F 1 "+3.3VA" H 5440 4573 50  0000 C CNN
F 2 "" H 5425 4400 50  0001 C CNN
F 3 "" H 5425 4400 50  0001 C CNN
	1    5425 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0119
U 1 1 60A3EA9A
P 5450 1375
AR Path="/6046BF11/60A3EA9A" Ref="#PWR0119"  Part="1" 
AR Path="/60A3EA9A" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A3EA9A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 5450 1225 50  0001 C CNN
F 1 "+3.3VA" H 5465 1548 50  0000 C CNN
F 2 "" H 5450 1375 50  0001 C CNN
F 3 "" H 5450 1375 50  0001 C CNN
	1    5450 1375
	1    0    0    -1  
$EndComp
Text GLabel 4725 5425 0    50   Input ~ 0
Mux1A_2xB4
$EndSCHEMATC
