EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Connector:RJ45 J?
U 1 1 606BE27B
P 8350 2375
AR Path="/606BE27B" Ref="J?"  Part="1" 
AR Path="/60689BD3/606BE27B" Ref="J5"  Part="1" 
AR Path="/606D4EDD/606BE27B" Ref="J?"  Part="1" 
F 0 "J5" H 8020 2379 50  0000 R CNN
F 1 "RJ45" H 8020 2470 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Ninigi_GE" V 8350 2400 50  0001 C CNN
F 3 "~" V 8350 2400 50  0001 C CNN
	1    8350 2375
	-1   0    0    1   
$EndComp
$Comp
L P82B96TD_118:P82B96TD,118 IC?
U 1 1 606BE2A0
P 3575 3800
AR Path="/606BE2A0" Ref="IC?"  Part="1" 
AR Path="/60689BD3/606BE2A0" Ref="U9"  Part="1" 
AR Path="/606D4EDD/606BE2A0" Ref="IC?"  Part="1" 
F 0 "U9" H 4075 4065 50  0000 C CNN
F 1 "P82B96TD,118" H 4075 3974 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4425 3900 50  0001 L CNN
F 3 "http://www.nxp.com/docs/en/data-sheet/P82B96.pdf" H 4425 3800 50  0001 L CNN
F 4 "Dual bidirectional bus buffer" H 4425 3700 50  0001 L CNN "Description"
F 5 "1.75" H 4425 3600 50  0001 L CNN "Height"
F 6 "NXP" H 4425 3500 50  0001 L CNN "Manufacturer_Name"
F 7 "P82B96TD,118" H 4425 3400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-P82B96TD-T" H 4425 3300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/NXP-Semiconductors/P82B96TD118/?qs=LOCUfHb8d9vV76HkGf93IA%3D%3D" H 4425 3200 50  0001 L CNN "Mouser Price/Stock"
F 10 "P82B96TD,118" H 4425 3100 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/p82b96td118/nxp-semiconductors" H 4425 3000 50  0001 L CNN "Arrow Price/Stock"
	1    3575 3800
	1    0    0    -1  
$EndComp
Text GLabel 3575 3800 0    50   Output ~ 0
I2C_SCL
Text GLabel 4575 3900 2    50   Output ~ 0
I2C_SDA
$Comp
L power:+5V #PWR?
U 1 1 606BE2AA
P 4575 3575
AR Path="/606BE2AA" Ref="#PWR?"  Part="1" 
AR Path="/60470140/606BE2AA" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/606BE2AA" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/606BE2AA" Ref="#PWR0111"  Part="1" 
AR Path="/606D4EDD/606BE2AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 4575 3425 50  0001 C CNN
F 1 "+5V" H 4590 3748 50  0000 C CNN
F 2 "" H 4575 3575 50  0001 C CNN
F 3 "" H 4575 3575 50  0001 C CNN
	1    4575 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 3575 4575 3800
Connection ~ 4575 3575
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 606BE2B2
P 4775 3575
AR Path="/606BE2B2" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/606BE2B2" Ref="#PWR?"  Part="1" 
AR Path="/60470140/606BE2B2" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/606BE2B2" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/606BE2B2" Ref="#PWR0112"  Part="1" 
AR Path="/606D4EDD/606BE2B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 4775 3325 50  0001 C CNN
F 1 "GND" H 4780 3402 50  0000 C CNN
F 2 "" H 4775 3575 50  0001 C CNN
F 3 "" H 4775 3575 50  0001 C CNN
	1    4775 3575
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 606BE2BB
P 4675 3575
AR Path="/606BE2BB" Ref="C?"  Part="1" 
AR Path="/5FDBCBB6/606BE2BB" Ref="C?"  Part="1" 
AR Path="/60470140/606BE2BB" Ref="C?"  Part="1" 
AR Path="/6046BF11/606BE2BB" Ref="C?"  Part="1" 
AR Path="/60689BD3/606BE2BB" Ref="C5"  Part="1" 
AR Path="/606D4EDD/606BE2BB" Ref="C?"  Part="1" 
F 0 "C5" V 4525 3775 50  0000 R CNN
F 1 ".1uF" V 4625 3775 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4675 3575 50  0001 C CNN
F 3 "~" H 4675 3575 50  0001 C CNN
F 4 "C1525" H 4675 3575 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL05B104KO5NNNC_100nF-104-10-16V_C1525.html/?href=jlc-SMT" H 4675 3575 50  0001 C CNN "Link"
F 6 "CL05B104KO5NNNC" H 4675 3575 50  0001 C CNN "MFG PN"
	1    4675 3575
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 606BE2CF
P 3000 3150
AR Path="/606BE2CF" Ref="R?"  Part="1" 
AR Path="/60689BD3/606BE2CF" Ref="R3"  Part="1" 
AR Path="/606D4EDD/606BE2CF" Ref="R?"  Part="1" 
F 0 "R3" H 3068 3196 50  0000 L CNN
F 1 "750" H 3068 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3000 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 606BE2D6
P 3000 3050
AR Path="/606BE2D6" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/606BE2D6" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/606BE2D6" Ref="#PWR0114"  Part="1" 
AR Path="/606D4EDD/606BE2D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 3000 2900 50  0001 C CNN
F 1 "+12V" H 3015 3223 50  0000 C CNN
F 2 "" H 3000 3050 50  0001 C CNN
F 3 "" H 3000 3050 50  0001 C CNN
	1    3000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 4050 5400 4050
$Comp
L Device:R_Small_US R?
U 1 1 606BE2E8
P 5125 3150
AR Path="/606BE2E8" Ref="R?"  Part="1" 
AR Path="/60689BD3/606BE2E8" Ref="R4"  Part="1" 
AR Path="/606D4EDD/606BE2E8" Ref="R?"  Part="1" 
F 0 "R4" H 5193 3196 50  0000 L CNN
F 1 "750" H 5193 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5125 3150 50  0001 C CNN
F 3 "~" H 5125 3150 50  0001 C CNN
	1    5125 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 606BE2EF
P 5125 3050
AR Path="/606BE2EF" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/606BE2EF" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/606BE2EF" Ref="#PWR0115"  Part="1" 
AR Path="/606D4EDD/606BE2EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 5125 2900 50  0001 C CNN
F 1 "+12V" H 5140 3223 50  0000 C CNN
F 2 "" H 5125 3050 50  0001 C CNN
F 3 "" H 5125 3050 50  0001 C CNN
	1    5125 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 4050 5125 4050
Connection ~ 5125 4050
Text Notes 7175 1825 0    79   ~ 0
Solenoid Board Control Outputs
Text Notes 3125 2750 0    79   ~ 0
I2C to Differential I2C Converter
Text Notes 1125 6975 0    50   ~ 10
Notes:\n\n1. Differential i2c is pulled up to +12 to allow cable lengths 100ft+, refer to datasheet\n\n2. TVS diodes trip at 13V
$Comp
L SMBJ12ATR:SMBJ12A-TR D?
U 1 1 606D84FA
P 3000 3950
AR Path="/60470140/606D84FA" Ref="D?"  Part="1" 
AR Path="/6046BF11/60846882/606D84FA" Ref="D?"  Part="1" 
AR Path="/605A264C/606D84FA" Ref="D?"  Part="1" 
AR Path="/606895AD/606D84FA" Ref="D?"  Part="1" 
AR Path="/60689BD3/606D84FA" Ref="D1"  Part="1" 
F 0 "D1" V 3150 4075 60  0000 C CNN
F 1 "SMF12A" H 3150 4107 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3000 3715 60  0001 C CNN
F 3 "" H 2950 3950 60  0000 C CNN
	1    3000 3950
	0    -1   1    0   
$EndComp
$Comp
L SMBJ12ATR:SMBJ12A-TR D?
U 1 1 606D8C4B
P 5125 4050
AR Path="/60470140/606D8C4B" Ref="D?"  Part="1" 
AR Path="/6046BF11/60846882/606D8C4B" Ref="D?"  Part="1" 
AR Path="/605A264C/606D8C4B" Ref="D?"  Part="1" 
AR Path="/606895AD/606D8C4B" Ref="D?"  Part="1" 
AR Path="/60689BD3/606D8C4B" Ref="D2"  Part="1" 
F 0 "D2" V 5275 4175 60  0000 C CNN
F 1 "SMF12A" H 5275 4207 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5125 3815 60  0001 C CNN
F 3 "" H 5075 4050 60  0000 C CNN
	1    5125 4050
	0    1    1    0   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 606E86CF
P 4075 4350
AR Path="/606E86CF" Ref="#PWR?"  Part="1" 
AR Path="/5FDBCBB6/606E86CF" Ref="#PWR?"  Part="1" 
AR Path="/60470140/606E86CF" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/606E86CF" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/606E86CF" Ref="#PWR0117"  Part="1" 
AR Path="/606D4EDD/606E86CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 4075 4100 50  0001 C CNN
F 1 "GND" H 4080 4177 50  0000 C CNN
F 2 "" H 4075 4350 50  0001 C CNN
F 3 "" H 4075 4350 50  0001 C CNN
	1    4075 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J?
U 1 1 606FD915
P 8350 3625
AR Path="/606FD915" Ref="J?"  Part="1" 
AR Path="/60689BD3/606FD915" Ref="J6"  Part="1" 
AR Path="/606D4EDD/606FD915" Ref="J?"  Part="1" 
F 0 "J6" H 8020 3629 50  0000 R CNN
F 1 "RJ45" H 8020 3720 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Ninigi_GE" V 8350 3650 50  0001 C CNN
F 3 "~" V 8350 3650 50  0001 C CNN
	1    8350 3625
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J?
U 1 1 6070BC46
P 8350 4900
AR Path="/6070BC46" Ref="J?"  Part="1" 
AR Path="/60689BD3/6070BC46" Ref="J7"  Part="1" 
AR Path="/606D4EDD/6070BC46" Ref="J?"  Part="1" 
F 0 "J7" H 8020 4904 50  0000 R CNN
F 1 "RJ45" H 8020 4995 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Ninigi_GE" V 8350 4925 50  0001 C CNN
F 3 "~" V 8350 4925 50  0001 C CNN
	1    8350 4900
	-1   0    0    1   
$EndComp
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 6070BC50
P 7150 5300
AR Path="/6070BC50" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/6070BC50" Ref="#PWR0120"  Part="1" 
AR Path="/606D4EDD/6070BC50" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 7150 5050 50  0001 C CNN
F 1 "GND" H 7200 5150 50  0000 C CNN
F 2 "" H 7150 5300 50  0001 C CNN
F 3 "" H 7150 5300 50  0001 C CNN
	1    7150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5300 7150 4900
Connection ~ 7150 5300
Wire Wire Line
	7225 5200 7225 4800
$Comp
L power:+5V #PWR?
U 1 1 6070BC5D
P 7225 4800
AR Path="/6070BC5D" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/6070BC5D" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/6070BC5D" Ref="#PWR0121"  Part="1" 
AR Path="/606D4EDD/6070BC5D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 7225 4650 50  0001 C CNN
F 1 "+5V" H 7240 4973 50  0000 C CNN
F 2 "" H 7225 4800 50  0001 C CNN
F 3 "" H 7225 4800 50  0001 C CNN
	1    7225 4800
	1    0    0    -1  
$EndComp
Connection ~ 7225 4800
$Comp
L Connector:Screw_Terminal_01x06 TB1
U 1 1 6070D864
P 10475 3475
F 0 "TB1" H 10555 3421 50  0000 L CNN
F 1 "Screw_Terminal_01x06" H 10555 3376 50  0001 L CNN
F 2 "TBL002A-350-02GY-2GY:CUI_TBL002A-350-06GY-2GY" H 10475 3475 50  0001 C CNN
F 3 "~" H 10475 3475 50  0001 C CNN
	1    10475 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	10275 3575 10175 3575
Wire Wire Line
	10175 3575 10175 3675
Wire Wire Line
	10175 3775 10275 3775
Wire Wire Line
	10275 3675 10175 3675
Connection ~ 10175 3675
Wire Wire Line
	10175 3675 10175 3775
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60718F54
P 10175 3825
AR Path="/60718F54" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/60718F54" Ref="#PWR0122"  Part="1" 
AR Path="/606D4EDD/60718F54" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 10175 3575 50  0001 C CNN
F 1 "GND" H 10225 3675 50  0000 C CNN
F 2 "" H 10175 3825 50  0001 C CNN
F 3 "" H 10175 3825 50  0001 C CNN
	1    10175 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	10175 3825 10175 3775
Connection ~ 10175 3775
Wire Wire Line
	10275 3275 10200 3275
Wire Wire Line
	10200 3275 10200 3375
Wire Wire Line
	10200 3475 10275 3475
Wire Wire Line
	10275 3375 10200 3375
Connection ~ 10200 3375
Wire Wire Line
	10200 3375 10200 3475
$Comp
L power:+12V #PWR?
U 1 1 6071CDD6
P 10200 3200
AR Path="/6071CDD6" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/6071CDD6" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/6071CDD6" Ref="#PWR0123"  Part="1" 
AR Path="/606D4EDD/6071CDD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 10200 3050 50  0001 C CNN
F 1 "+12V" H 10215 3373 50  0000 C CNN
F 2 "" H 10200 3200 50  0001 C CNN
F 3 "" H 10200 3200 50  0001 C CNN
	1    10200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3200 10200 3275
Connection ~ 10200 3275
Text Notes 9350 2700 0    79   ~ 0
Solenoid Board Power Outputs
Wire Wire Line
	4575 4000 4575 4050
Connection ~ 4575 4050
Wire Wire Line
	4575 4050 4575 4100
Wire Wire Line
	3575 3900 3575 3950
Wire Wire Line
	3000 3250 3000 3950
Wire Wire Line
	3000 3950 3575 3950
Connection ~ 3575 3950
Wire Wire Line
	3575 3950 3575 4000
Connection ~ 3000 3950
Wire Wire Line
	3000 4250 3000 4350
Wire Wire Line
	3000 4350 3575 4350
Connection ~ 4075 4350
Wire Wire Line
	4075 4350 5125 4350
Wire Wire Line
	3575 4100 3575 4350
Connection ~ 3575 4350
Wire Wire Line
	3575 4350 4075 4350
Text GLabel 2725 3950 0    50   Input ~ 0
dI2C_SCL
Wire Wire Line
	3000 3950 2725 3950
Text GLabel 5400 4050 2    50   Input ~ 0
dI2C_SDA
Text GLabel 7900 4650 0    50   Input ~ 0
dI2C_SCL
Wire Wire Line
	7950 4600 7950 4650
Wire Wire Line
	7950 4650 7900 4650
Connection ~ 7950 4650
Wire Wire Line
	7950 4650 7950 4700
Wire Wire Line
	7225 4800 7950 4800
Wire Wire Line
	7150 4900 7950 4900
Wire Wire Line
	7225 5200 7950 5200
Wire Wire Line
	7150 5300 7950 5300
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 609F9931
P 7150 4025
AR Path="/609F9931" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/609F9931" Ref="#PWR0109"  Part="1" 
AR Path="/606D4EDD/609F9931" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 7150 3775 50  0001 C CNN
F 1 "GND" H 7200 3875 50  0000 C CNN
F 2 "" H 7150 4025 50  0001 C CNN
F 3 "" H 7150 4025 50  0001 C CNN
	1    7150 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4025 7150 3625
Connection ~ 7150 4025
Wire Wire Line
	7225 3925 7225 3525
$Comp
L power:+5V #PWR?
U 1 1 609F993A
P 7225 3525
AR Path="/609F993A" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/609F993A" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/609F993A" Ref="#PWR0110"  Part="1" 
AR Path="/606D4EDD/609F993A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 7225 3375 50  0001 C CNN
F 1 "+5V" H 7240 3698 50  0000 C CNN
F 2 "" H 7225 3525 50  0001 C CNN
F 3 "" H 7225 3525 50  0001 C CNN
	1    7225 3525
	1    0    0    -1  
$EndComp
Connection ~ 7225 3525
Wire Wire Line
	7225 3525 7950 3525
Wire Wire Line
	7150 3625 7950 3625
Wire Wire Line
	7225 3925 7950 3925
Wire Wire Line
	7150 4025 7950 4025
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 609FBAC3
P 7150 2775
AR Path="/609FBAC3" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/609FBAC3" Ref="#PWR0113"  Part="1" 
AR Path="/606D4EDD/609FBAC3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 7150 2525 50  0001 C CNN
F 1 "GND" H 7200 2625 50  0000 C CNN
F 2 "" H 7150 2775 50  0001 C CNN
F 3 "" H 7150 2775 50  0001 C CNN
	1    7150 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2775 7150 2375
Connection ~ 7150 2775
Wire Wire Line
	7225 2675 7225 2275
$Comp
L power:+5V #PWR?
U 1 1 609FBACC
P 7225 2275
AR Path="/609FBACC" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/609FBACC" Ref="#PWR?"  Part="1" 
AR Path="/60689BD3/609FBACC" Ref="#PWR0116"  Part="1" 
AR Path="/606D4EDD/609FBACC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 7225 2125 50  0001 C CNN
F 1 "+5V" H 7240 2448 50  0000 C CNN
F 2 "" H 7225 2275 50  0001 C CNN
F 3 "" H 7225 2275 50  0001 C CNN
	1    7225 2275
	1    0    0    -1  
$EndComp
Connection ~ 7225 2275
Wire Wire Line
	7225 2275 7950 2275
Wire Wire Line
	7150 2375 7950 2375
Wire Wire Line
	7225 2675 7950 2675
Wire Wire Line
	7150 2775 7950 2775
Text GLabel 7900 3375 0    50   Input ~ 0
dI2C_SCL
Wire Wire Line
	7950 3375 7900 3375
Text GLabel 7900 2125 0    50   Input ~ 0
dI2C_SCL
Wire Wire Line
	7950 2125 7900 2125
Wire Wire Line
	7950 2075 7950 2125
Connection ~ 7950 2125
Wire Wire Line
	7950 2125 7950 2175
Wire Wire Line
	7950 3325 7950 3375
Connection ~ 7950 3375
Wire Wire Line
	7950 3375 7950 3425
Wire Wire Line
	5125 3250 5125 4050
Text GLabel 7900 2525 0    50   Input ~ 0
dI2C_SDA
Wire Wire Line
	7900 2525 7950 2525
Wire Wire Line
	7950 2525 7950 2575
Wire Wire Line
	7950 2475 7950 2525
Connection ~ 7950 2525
Text GLabel 7900 3775 0    50   Input ~ 0
dI2C_SDA
Wire Wire Line
	7900 3775 7950 3775
Wire Wire Line
	7950 3775 7950 3825
Wire Wire Line
	7950 3725 7950 3775
Connection ~ 7950 3775
Text GLabel 7900 5050 0    50   Input ~ 0
dI2C_SDA
Wire Wire Line
	7900 5050 7950 5050
Wire Wire Line
	7950 5050 7950 5100
Wire Wire Line
	7950 5000 7950 5050
Connection ~ 7950 5050
$EndSCHEMATC
