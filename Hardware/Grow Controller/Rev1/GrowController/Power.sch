EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 950  3700 0    39   ~ 0
> From fused 120V-12VDC \n   Converter
Text Notes 1550 3050 0    79   ~ 0
Input Power
Wire Wire Line
	2350 3825 2350 3875
Connection ~ 5900 3350
Wire Notes Line
	3850 3000 3850 4250
Wire Wire Line
	4700 3550 4775 3550
Connection ~ 4700 3550
Wire Wire Line
	4700 3550 4700 3350
Wire Wire Line
	4625 3550 4700 3550
Wire Wire Line
	5800 3350 5900 3350
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A03735
P 5900 3450
AR Path="/60A03735" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A03735" Ref="C18"  Part="1" 
F 0 "C18" H 5925 3375 50  0000 L CNN
F 1 "100nF" H 5875 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5900 3450 50  0001 C CNN
F 3 "~" H 5900 3450 50  0001 C CNN
F 4 "C14663" H 5900 3450 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 5900 3450 50  0001 C CNN "Link"
F 6 " CC0603KRX7R9BB104" H 5900 3450 50  0001 C CNN "MFG PN"
	1    5900 3450
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:L-Device-OzoneController-rescue L?
U 1 1 60A0373E
P 6200 3350
AR Path="/60A0373E" Ref="L?"  Part="1" 
AR Path="/609EE4E9/60A0373E" Ref="L1"  Part="1" 
F 0 "L1" V 6390 3350 50  0000 C CNN
F 1 "3.3uH" V 6299 3350 50  0000 C CNN
F 2 "Inductor_SMD:L_10.4x10.4_H4.8" H 6200 3350 50  0001 C CNN
F 3 "~" H 6200 3350 50  0001 C CNN
F 4 "C31964" H 6200 3350 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Power-Inductors_SXN-Shun-Xiang-Nuo-Elec-SMDRH105R-3R3NT_C31964.html/?href=jlc-SMT" H 6200 3350 50  0001 C CNN "Link"
F 6 "SMDRH105R-3R3NT" H 6200 3350 50  0001 C CNN "MFG PN"
	1    6200 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 3550 5900 3550
Wire Wire Line
	5900 3350 6050 3350
Wire Wire Line
	4950 3350 5000 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3550 4950 3350
Wire Wire Line
	5000 3550 4950 3550
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60A0374A
P 5400 4000
AR Path="/60A0374A" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A0374A" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5400 3750 50  0001 C CNN
F 1 "GND" H 5400 3850 50  0000 C CNN
F 2 "" H 5400 4000 50  0001 C CNN
F 3 "" H 5400 4000 50  0001 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TPS563200 U?
U 1 1 60A03753
P 5400 3550
AR Path="/60A03753" Ref="U?"  Part="1" 
AR Path="/609EE4E9/60A03753" Ref="U7"  Part="1" 
F 0 "U7" H 5400 4000 50  0000 C CNN
F 1 "TPS563200" H 5400 3900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5450 3300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps563200.pdf" H 5400 3550 50  0001 C CNN
F 4 "C116592" H 5400 3550 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/DC-DC-Converters_Texas-Instruments-TPS563201DDCR_C116592.html" H 5400 3550 50  0001 C CNN "Link"
F 6 "TPS563201DDCR" H 5400 3550 50  0001 C CNN "MFG PN"
	1    5400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60A0375C
P 6400 3550
AR Path="/60A0375C" Ref="R?"  Part="1" 
AR Path="/609EE4E9/60A0375C" Ref="R73"  Part="1" 
F 0 "R73" H 6333 3504 50  0000 R CNN
F 1 "56.2k" H 6333 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6400 3550 50  0001 C CNN
F 3 "~" H 6400 3550 50  0001 C CNN
F 4 "C54968" H 6400 3550 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0402WGF1002TCE_C25744.html" H 6400 3550 50  0001 C CNN "Link"
F 6 "0402WGF5622TCE" H 6400 3550 50  0001 C CNN "MFG PN"
	1    6400 3550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60A03765
P 6400 3850
AR Path="/60A03765" Ref="R?"  Part="1" 
AR Path="/609EE4E9/60A03765" Ref="R74"  Part="1" 
F 0 "R74" H 6332 3804 50  0000 R CNN
F 1 "10k" H 6332 3895 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6400 3850 50  0001 C CNN
F 3 "~" H 6400 3850 50  0001 C CNN
F 4 "C25744" H 6400 3850 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0402WGF1002TCE_C25744.html" H 6400 3850 50  0001 C CNN "Link"
F 6 "0402WGF1002TCE" H 6400 3850 50  0001 C CNN "MFG PN"
	1    6400 3850
	1    0    0    1   
$EndComp
Wire Notes Line
	8000 3000 8000 4250
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A0376F
P 4775 3650
AR Path="/60A0376F" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A0376F" Ref="C17"  Part="1" 
F 0 "C17" H 4875 3600 50  0000 L CNN
F 1 "10uF" H 4825 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4775 3650 50  0001 C CNN
F 3 "~" H 4775 3650 50  0001 C CNN
F 4 "C13585" H 4775 3650 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html" H 4775 3650 50  0001 C CNN "Link"
F 6 "CL31A106KBH" H 4775 3650 50  0001 C CNN "MFG PN"
	1    4775 3650
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A03778
P 4625 3650
AR Path="/60A03778" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A03778" Ref="C16"  Part="1" 
F 0 "C16" H 4450 3600 50  0000 L CNN
F 1 "10uF" H 4400 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4625 3650 50  0001 C CNN
F 3 "~" H 4625 3650 50  0001 C CNN
F 4 "C13585" H 4625 3650 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html" H 4625 3650 50  0001 C CNN "Link"
F 6 "CL31A106KBH" H 4625 3650 50  0001 C CNN "MFG PN"
	1    4625 3650
	1    0    0    -1  
$EndComp
Text Notes 5025 2950 0    79   ~ 0
12V to 5V SMPS Conversion \n
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A03782
P 6700 3650
AR Path="/60A03782" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A03782" Ref="C19"  Part="1" 
F 0 "C19" H 6525 3700 50  0000 L CNN
F 1 "22uF" H 6450 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6700 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
F 4 "C12891" H 6700 3650 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL31A226KAHNNNE_C12891.html" H 6700 3650 50  0001 C CNN "Link"
F 6 "CL31A226KAHNNNE" H 6700 3650 50  0001 C CNN "MFG PN"
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A0378B
P 6850 3650
AR Path="/60A0378B" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A0378B" Ref="C20"  Part="1" 
F 0 "C20" H 6925 3700 50  0000 L CNN
F 1 "22uF" H 6925 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6850 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
F 4 "C12891" H 6850 3650 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL31A226KAHNNNE_C12891.html" H 6850 3650 50  0001 C CNN "Link"
F 6 "CL31A226KAHNNNE" H 6850 3650 50  0001 C CNN "MFG PN"
	1    6850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3550 6775 3550
Wire Wire Line
	6775 3350 6775 3550
Connection ~ 6775 3550
Wire Wire Line
	6775 3550 6850 3550
Wire Notes Line
	3850 3000 8000 3000
Wire Notes Line
	3850 4250 8000 4250
Connection ~ 4700 3350
Wire Wire Line
	4700 3350 4950 3350
Wire Wire Line
	6350 3350 6400 3350
Connection ~ 6400 3350
Wire Wire Line
	6400 3350 6775 3350
Text Notes 3925 4250 0    50   ~ 0
Protects as 12V/5V/3.3V loads (except relays) from reverse voltage and 5V SMPS from reverse current
Wire Wire Line
	4500 3350 4700 3350
Connection ~ 4700 4000
Wire Wire Line
	4300 4000 4700 4000
$Comp
L Project_Library:PMOS_AO4407A Q?
U 1 1 60A037A3
P 4300 3350
AR Path="/60A037A3" Ref="Q?"  Part="1" 
AR Path="/609EE4E9/60A037A3" Ref="Q20"  Part="1" 
F 0 "Q20" H 4300 3600 50  0000 C CNN
F 1 "PMOS" H 4300 3500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4500 3450 50  0001 C CNN
F 3 "~" H 4300 3350 50  0001 C CNN
F 4 "C16072" H 4300 3350 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/MOSFET_Alpha-Omega-Semicon-AO4407A_C16072.html" H 4300 3350 50  0001 C CNN "Link"
F 6 " AO4407A" H 4300 3350 50  0001 C CNN "MFG PN"
	1    4300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4000 5400 4000
Connection ~ 5400 4000
Wire Wire Line
	4625 3750 4700 3750
Wire Wire Line
	6700 3750 6775 3750
Wire Wire Line
	5400 4000 6400 4000
Wire Wire Line
	4300 3650 4300 4000
Wire Wire Line
	4700 3750 4700 4000
Connection ~ 4700 3750
Wire Wire Line
	4700 3750 4775 3750
Wire Wire Line
	6400 3950 6400 4000
Connection ~ 6400 4000
Wire Wire Line
	6400 4000 6775 4000
Wire Wire Line
	6775 3750 6775 4000
Connection ~ 6775 3750
Wire Wire Line
	6775 3750 6850 3750
Wire Wire Line
	6400 3350 6400 3450
Wire Wire Line
	5800 3700 6400 3700
Wire Wire Line
	6400 3700 6400 3650
Wire Wire Line
	6400 3750 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	2350 3425 2350 3375
Wire Notes Line
	900  4250 900  3100
Wire Notes Line
	900  3100 2850 3100
Wire Notes Line
	2850 3100 2850 4250
Wire Notes Line
	900  4250 2850 4250
Text Notes 2075 3450 2    39   ~ 8
12V\nSpare
$Comp
L power:+12V #PWR?
U 1 1 60A037CE
P 2475 3375
AR Path="/60A037CE" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A037CE" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2475 3225 50  0001 C CNN
F 1 "+12V" H 2490 3548 50  0000 C CNN
F 2 "" H 2475 3375 50  0001 C CNN
F 3 "" H 2475 3375 50  0001 C CNN
	1    2475 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3375 2475 3375
$Comp
L power:+12V #PWR?
U 1 1 60A037D5
P 3975 3350
AR Path="/60A037D5" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A037D5" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3975 3200 50  0001 C CNN
F 1 "+12V" H 3990 3523 50  0000 C CNN
F 2 "" H 3975 3350 50  0001 C CNN
F 3 "" H 3975 3350 50  0001 C CNN
	1    3975 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 3350 4100 3350
$Comp
L power:+5V #PWR?
U 1 1 60A037DC
P 7850 3350
AR Path="/60A037DC" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A037DC" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 7850 3200 50  0001 C CNN
F 1 "+5V" H 7865 3523 50  0000 C CNN
F 2 "" H 7850 3350 50  0001 C CNN
F 3 "" H 7850 3350 50  0001 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60A037E2
P 7775 3825
AR Path="/60470140/60A037E2" Ref="R?"  Part="1" 
AR Path="/60A037E2" Ref="R?"  Part="1" 
AR Path="/609EE4E9/60A037E2" Ref="R75"  Part="1" 
F 0 "R75" H 7650 3800 50  0000 C CNN
F 1 "6.8k" H 7650 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7775 3825 50  0001 C CNN
F 3 "~" H 7775 3825 50  0001 C CNN
	1    7775 3825
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 60A037E8
P 7725 3525
AR Path="/60470140/60A037E8" Ref="D?"  Part="1" 
AR Path="/60A037E8" Ref="D?"  Part="1" 
AR Path="/609EE4E9/60A037E8" Ref="D39"  Part="1" 
F 0 "D39" V 7725 3425 50  0000 C CNN
F 1 "LED_Red_power" H 7725 3409 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7725 3525 50  0001 C CNN
F 3 "~" V 7725 3525 50  0001 C CNN
	1    7725 3525
	0    -1   -1   0   
$EndComp
Connection ~ 6775 4000
Wire Wire Line
	6775 4000 7325 4000
$Comp
L Device:Q_Dual_PMOS_S1G1S2G2D2D2D1D1 Q?
U 2 1 60A037F3
P 7525 3450
AR Path="/60A037F3" Ref="Q?"  Part="1" 
AR Path="/609EE4E9/60A037F3" Ref="Q21"  Part="2" 
F 0 "Q21" V 7750 3375 50  0000 L CNN
F 1 "Q_Dual_PMOS_S1G1S2G2D2D2D1D1" H 7813 3405 50  0001 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 7575 3450 50  0001 C CNN
F 3 "~" H 7575 3450 50  0001 C CNN
F 4 "C148417" H 7525 3450 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/MOSFET_ON-Semiconductor-FDG6316P_C154509.html" H 7525 3450 50  0001 C CNN "Link"
F 6 " WSP4807" H 7525 3450 50  0001 C CNN "MFG PN"
	2    7525 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7325 3650 7525 3650
Connection ~ 7325 3650
Wire Wire Line
	7325 3650 7325 4000
Wire Wire Line
	7125 3650 7325 3650
$Comp
L Device:Q_Dual_PMOS_S1G1S2G2D2D2D1D1 Q?
U 1 1 60A03800
P 7125 3450
AR Path="/60A03800" Ref="Q?"  Part="2" 
AR Path="/609EE4E9/60A03800" Ref="Q21"  Part="1" 
F 0 "Q21" V 7350 3375 50  0000 L CNN
F 1 "Q_Dual_PMOS_S1G1S2G2D2D2D1D1" H 7413 3405 50  0001 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 7175 3450 50  0001 C CNN
F 3 "~" H 7175 3450 50  0001 C CNN
F 4 "C148417" H 7125 3450 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/MOSFET_ON-Semiconductor-FDG6316P_C154509.html" H 7125 3450 50  0001 C CNN "Link"
F 6 " WSP4807" H 7125 3450 50  0001 C CNN "MFG PN"
	1    7125 3450
	0    1    -1   0   
$EndComp
Connection ~ 7325 4000
Wire Wire Line
	7325 4000 7725 4000
Wire Wire Line
	6775 3350 6925 3350
Connection ~ 6775 3350
Wire Wire Line
	7725 3350 7725 3425
Wire Wire Line
	7725 3625 7725 3725
Wire Wire Line
	7725 3925 7725 4000
Wire Wire Line
	7725 3350 7850 3350
Connection ~ 7725 3350
Text Notes 9350 3125 0    79   ~ 0
5V to 3.3V LDO\n
Wire Notes Line
	8950 3150 10600 3150
Connection ~ 9950 3500
Connection ~ 9350 3500
Wire Wire Line
	9175 3500 9350 3500
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60A08CA3
P 9650 3900
AR Path="/60A08CA3" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60A08CA3" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A08CA3" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 9650 3650 50  0001 C CNN
F 1 "GND" H 9650 3750 50  0000 C CNN
F 2 "" H 9650 3900 50  0001 C CNN
F 3 "" H 9650 3900 50  0001 C CNN
	1    9650 3900
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A08CB1
P 9950 3600
AR Path="/60A08CB1" Ref="C?"  Part="1" 
AR Path="/6046BF11/60A08CB1" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A08CB1" Ref="C22"  Part="1" 
F 0 "C22" H 10075 3600 50  0000 L CNN
F 1 "22uF" H 10050 3525 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9950 3600 50  0001 C CNN
F 3 "~" H 9950 3600 50  0001 C CNN
F 4 "C12891" H 9950 3600 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL31A226KAHNNNE_C12891.html" H 9950 3600 50  0001 C CNN "Link"
F 6 "CL31A226KAHNNNE" H 9950 3600 50  0001 C CNN "MFG PN"
	1    9950 3600
	1    0    0    -1  
$EndComp
$Comp
L OzoneController-rescue:C_Small-Device-OzoneController-rescue C?
U 1 1 60A08CBA
P 9350 3600
AR Path="/60A08CBA" Ref="C?"  Part="1" 
AR Path="/6046BF11/60A08CBA" Ref="C?"  Part="1" 
AR Path="/609EE4E9/60A08CBA" Ref="C21"  Part="1" 
F 0 "C21" H 9150 3550 50  0000 L CNN
F 1 "10uF" H 9100 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9350 3600 50  0001 C CNN
F 3 "~" H 9350 3600 50  0001 C CNN
F 4 "C13585" H 9350 3600 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html" H 9350 3600 50  0001 C CNN "Link"
F 6 "CL31A106KBH" H 9350 3600 50  0001 C CNN "MFG PN"
	1    9350 3600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 60A08CC3
P 9650 3500
AR Path="/60A08CC3" Ref="U?"  Part="1" 
AR Path="/6046BF11/60A08CC3" Ref="U?"  Part="1" 
AR Path="/609EE4E9/60A08CC3" Ref="U8"  Part="1" 
F 0 "U8" H 9650 3742 50  0000 C CNN
F 1 "AMS1117-3.3" H 9650 3651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9650 3700 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 9750 3250 50  0001 C CNN
F 4 "C6186" H 9650 3500 50  0001 C CNN "LCSC PN"
F 5 "https://lcsc.com/product-detail/Dropout-Regulators-LDO_Advanced-Monolithic-Systems-AMS1117-3-3_C6186.html" H 9650 3500 50  0001 C CNN "Link"
F 6 "AMS1117-3.3" H 9650 3500 50  0001 C CNN "MFG PN"
	1    9650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 3400 9175 3500
$Comp
L power:+5V #PWR?
U 1 1 60A08CCA
P 9175 3400
AR Path="/60A08CCA" Ref="#PWR?"  Part="1" 
AR Path="/60470140/60A08CCA" Ref="#PWR?"  Part="1" 
AR Path="/6046BF11/60A08CCA" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A08CCA" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 9175 3250 50  0001 C CNN
F 1 "+5V" H 9190 3573 50  0000 C CNN
F 2 "" H 9175 3400 50  0001 C CNN
F 3 "" H 9175 3400 50  0001 C CNN
	1    9175 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 60A08CD0
P 10325 3500
AR Path="/6046BF11/60A08CD0" Ref="#PWR?"  Part="1" 
AR Path="/60A08CD0" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A08CD0" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 10325 3350 50  0001 C CNN
F 1 "+3.3VA" H 10340 3673 50  0000 C CNN
F 2 "" H 10325 3500 50  0001 C CNN
F 3 "" H 10325 3500 50  0001 C CNN
	1    10325 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 605BE1E1
P 3975 3825
AR Path="/60470140/605BE1E1" Ref="R?"  Part="1" 
AR Path="/605BE1E1" Ref="R?"  Part="1" 
AR Path="/609EE4E9/605BE1E1" Ref="R76"  Part="1" 
F 0 "R76" H 3875 3800 50  0000 C CNN
F 1 "10k" H 3850 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3975 3825 50  0001 C CNN
F 3 "~" H 3975 3825 50  0001 C CNN
	1    3975 3825
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 605BE1E7
P 3975 3525
AR Path="/60470140/605BE1E7" Ref="D?"  Part="1" 
AR Path="/605BE1E7" Ref="D?"  Part="1" 
AR Path="/609EE4E9/605BE1E7" Ref="D40"  Part="1" 
F 0 "D40" V 3975 3425 50  0000 C CNN
F 1 "LED_Red_power" H 3975 3409 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3975 3525 50  0001 C CNN
F 3 "~" V 3975 3525 50  0001 C CNN
	1    3975 3525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3975 3350 3975 3425
Connection ~ 3975 3350
Wire Wire Line
	3975 3925 3975 4000
Wire Wire Line
	3975 4000 4300 4000
Connection ~ 4300 4000
Wire Wire Line
	3975 3725 3975 3625
Text Notes 2075 3950 2    39   ~ 8
AC Earth\n12V GND
$Comp
L Connector:Screw_Terminal_01x02 J36
U 1 1 60A76D5F
P 2150 3425
F 0 "J36" H 2068 3192 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2068 3191 50  0001 C CNN
F 2 "TBL004-508-02BE-2GY:CUI_TBL004-508-02BE-2GY" H 2150 3425 50  0001 C CNN
F 3 "~" H 2150 3425 50  0001 C CNN
	1    2150 3425
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J37
U 1 1 60A784FF
P 2150 3925
F 0 "J37" H 2068 3692 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2068 3691 50  0001 C CNN
F 2 "TBL004-508-02BE-2GY:CUI_TBL004-508-02BE-2GY" H 2150 3925 50  0001 C CNN
F 3 "~" H 2150 3925 50  0001 C CNN
	1    2150 3925
	-1   0    0    1   
$EndComp
Connection ~ 2350 3875
Wire Wire Line
	2350 3875 2350 3925
Connection ~ 2350 3375
Wire Wire Line
	2350 3375 2350 3325
$Comp
L OzoneController-rescue:GND-power-OzoneController-rescue #PWR?
U 1 1 60A82345
P 2475 3900
AR Path="/60A82345" Ref="#PWR?"  Part="1" 
AR Path="/609EE4E9/60A82345" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 2475 3650 50  0001 C CNN
F 1 "GND" H 2475 3750 50  0000 C CNN
F 2 "" H 2475 3900 50  0001 C CNN
F 3 "" H 2475 3900 50  0001 C CNN
	1    2475 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 3900 2475 3875
Wire Wire Line
	2350 3875 2475 3875
$Comp
L Device:R_Small_US R?
U 1 1 60A49552
P 10325 3800
AR Path="/60470140/60A49552" Ref="R?"  Part="1" 
AR Path="/60A49552" Ref="R?"  Part="1" 
AR Path="/609EE4E9/60A49552" Ref="R8"  Part="1" 
F 0 "R8" H 10225 3775 50  0000 C CNN
F 1 "6.8k" H 10200 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10325 3800 50  0001 C CNN
F 3 "~" H 10325 3800 50  0001 C CNN
	1    10325 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 60A49558
P 10325 3600
AR Path="/60470140/60A49558" Ref="D?"  Part="1" 
AR Path="/60A49558" Ref="D?"  Part="1" 
AR Path="/609EE4E9/60A49558" Ref="D5"  Part="1" 
F 0 "D5" V 10325 3500 50  0000 C CNN
F 1 "LED_Red_power" H 10325 3484 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 10325 3600 50  0001 C CNN
F 3 "~" V 10325 3600 50  0001 C CNN
	1    10325 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10325 3900 9950 3900
Connection ~ 9650 3900
Wire Wire Line
	9650 3900 9350 3900
Wire Wire Line
	9650 3800 9650 3900
Wire Wire Line
	9350 3700 9350 3900
Wire Wire Line
	9950 3700 9950 3900
Connection ~ 9950 3900
Wire Wire Line
	9950 3900 9650 3900
Wire Wire Line
	9950 3500 10325 3500
Connection ~ 10325 3500
$Comp
L Device:R_Small_US R?
U 1 1 60A5EE12
P 7675 3825
AR Path="/60470140/60A5EE12" Ref="R?"  Part="1" 
AR Path="/60A5EE12" Ref="R?"  Part="1" 
AR Path="/609EE4E9/60A5EE12" Ref="R7"  Part="1" 
F 0 "R7" H 7575 3800 50  0000 C CNN
F 1 "6.8k" H 7550 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7675 3825 50  0001 C CNN
F 3 "~" H 7675 3825 50  0001 C CNN
	1    7675 3825
	1    0    0    1   
$EndComp
Wire Wire Line
	7675 3925 7725 3925
Connection ~ 7725 3925
Wire Wire Line
	7725 3925 7775 3925
Wire Wire Line
	7675 3725 7725 3725
Connection ~ 7725 3725
Wire Wire Line
	7725 3725 7775 3725
Wire Notes Line
	8950 3150 8950 4125
Wire Notes Line
	8950 4125 10600 4125
Wire Notes Line
	10600 3150 10600 4125
$EndSCHEMATC
