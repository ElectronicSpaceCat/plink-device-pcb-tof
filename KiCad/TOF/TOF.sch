EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2023-01-23"
Rev "2.0"
Comp ""
Comment1 "Plink ToF interface board for the Plink Primary board"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7700 2700 7500 2700
Wire Wire Line
	7700 2800 7500 2800
Wire Wire Line
	7500 2800 7500 2700
Wire Wire Line
	7700 3000 7500 3000
Wire Wire Line
	7500 3000 7500 2800
Connection ~ 7500 2800
Wire Wire Line
	9700 2500 9800 2500
$Comp
L power:GND #PWR0101
U 1 1 5FC53A4A
P 9800 3100
F 0 "#PWR0101" H 9800 2850 50  0001 C CNN
F 1 "GND" H 9900 2950 50  0000 R CNN
F 2 "" H 9800 3100 50  0001 C CNN
F 3 "" H 9800 3100 50  0001 C CNN
	1    9800 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FC5424B
P 7500 3100
F 0 "#PWR0102" H 7500 2850 50  0001 C CNN
F 1 "GND" H 7600 2950 50  0000 R CNN
F 2 "" H 7500 3100 50  0001 C CNN
F 3 "" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3000 7500 3100
Connection ~ 7500 3000
Text GLabel 10150 2600 2    50   Input ~ 0
V2.8
Wire Wire Line
	7700 2900 7300 2900
$Comp
L Device:R_US R2
U 1 1 5FBEF8CC
P 6950 2900
F 0 "R2" V 6745 2900 50  0000 C CNN
F 1 "10k" V 6836 2900 50  0000 C CNN
F 2 "Stackpole_Res_0402:Stackpole_Res_0402" V 6990 2890 50  0001 C CNN
F 3 "~" H 6950 2900 50  0001 C CNN
	1    6950 2900
	0    1    1    0   
$EndComp
Text GLabel 10150 2800 2    50   BiDi ~ 0
SDA
Text GLabel 10150 2700 2    50   BiDi ~ 0
SCL
$Comp
L Device:R_US R1
U 1 1 5FBF2D50
P 6950 4350
F 0 "R1" V 6745 4350 50  0000 C CNN
F 1 "10k" V 6836 4350 50  0000 C CNN
F 2 "Stackpole_Res_0402:Stackpole_Res_0402" V 6990 4340 50  0001 C CNN
F 3 "~" H 6950 4350 50  0001 C CNN
	1    6950 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FBF5FCA
P 6050 2750
F 0 "C2" H 6165 2796 50  0000 L CNN
F 1 "4.7uF" H 6165 2705 50  0000 L CNN
F 2 "Capacitor_Taiyo_Yuden_0402:Capacitor_Taiyo_Yuden_0402" H 6088 2600 50  0001 C CNN
F 3 "~" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2900 6050 3100
$Comp
L power:GND #PWR0103
U 1 1 5FBF7B1C
P 6050 3100
F 0 "#PWR0103" H 6050 2850 50  0001 C CNN
F 1 "GND" H 6150 2950 50  0000 R CNN
F 2 "" H 6050 3100 50  0001 C CNN
F 3 "" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FBF824F
P 5550 2750
F 0 "C1" H 5665 2796 50  0000 L CNN
F 1 "0.1uF" H 5665 2705 50  0000 L CNN
F 2 "Capacitor_Taiyo_Yuden_0402:Capacitor_Taiyo_Yuden_0402" H 5588 2600 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FBF825B
P 5550 3100
F 0 "#PWR0104" H 5550 2850 50  0001 C CNN
F 1 "GND" H 5650 2950 50  0000 R CNN
F 2 "" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3100 50  0001 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2500 6700 2500
Text GLabel 5350 2500 0    50   Input ~ 0
V2.8
Wire Wire Line
	7500 2700 7500 2600
Wire Wire Line
	7500 2600 7700 2600
Connection ~ 7500 2700
Wire Wire Line
	6700 4350 6800 4350
Connection ~ 6700 2500
Wire Wire Line
	6700 2500 6050 2500
Wire Wire Line
	6700 2900 6800 2900
Connection ~ 6700 2900
Wire Wire Line
	6700 2900 6700 2500
Wire Wire Line
	6050 2600 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	5550 2600 5550 2500
Wire Wire Line
	5550 2900 5550 3100
Text Notes 4950 1900 0    50   ~ 0
Range sensor circuit
Text Notes 5000 5500 0    50   ~ 0
NOTES:\n1) Capacitors on external supply AVDD should be placed as close as possible to the AVDDVCSEL and AVSSVCSEL module pins\n2) GPIO1 should be left unconnected if unused\n3) Level-shift diodes are not needed for XHUT1/XSHUT2 since the output voltage (V2.8) and VDD are the same\n4) Level-shift on SDA/SCL not needed for same reason above
Wire Notes Line
	4900 1800 4900 5600
Wire Wire Line
	9700 2600 10150 2600
Wire Wire Line
	9700 2700 10150 2700
Wire Wire Line
	9700 2800 10150 2800
Wire Notes Line
	10850 5600 10850 1800
Wire Notes Line
	4900 1800 10850 1800
Wire Notes Line
	4900 5600 10850 5600
Wire Wire Line
	7300 3750 6550 3750
Wire Wire Line
	7300 2900 7300 2300
Wire Wire Line
	7300 2300 6550 2300
Connection ~ 7300 2900
Wire Wire Line
	7300 2900 7100 2900
Text GLabel 6550 3750 0    50   Input ~ 0
XSHUT1
Wire Notes Line
	750  1800 750  4000
Wire Notes Line
	750  4000 4550 4000
Wire Notes Line
	4550 4000 4550 1800
Wire Notes Line
	4550 1800 750  1800
Text Notes 800  1900 0    50   ~ 0
Headers
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FDA4FEF
P 3900 2050
F 0 "#FLG0101" H 3900 2125 50  0001 C CNN
F 1 "PWR_FLAG" V 3900 2177 50  0000 L CNN
F 2 "" H 3900 2050 50  0001 C CNN
F 3 "~" H 3900 2050 50  0001 C CNN
	1    3900 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2050 4150 2050
Text GLabel 4150 2050 2    50   Output ~ 0
V2.8
$Comp
L power:GND #PWR0108
U 1 1 5FDA7B8C
P 4150 2150
F 0 "#PWR0108" H 4150 1900 50  0001 C CNN
F 1 "GND" H 4250 2000 50  0000 R CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FDA90BF
P 3900 2150
F 0 "#FLG0102" H 3900 2225 50  0001 C CNN
F 1 "PWR_FLAG" V 3900 2277 50  0000 L CNN
F 2 "" H 3900 2150 50  0001 C CNN
F 3 "~" H 3900 2150 50  0001 C CNN
	1    3900 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2150 4150 2150
NoConn ~ 9700 3000
Wire Wire Line
	9800 2500 9800 3100
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FC55C39
P 3900 1950
F 0 "#FLG0103" H 3900 2025 50  0001 C CNN
F 1 "PWR_FLAG" V 3900 2077 50  0000 L CNN
F 2 "" H 3900 1950 50  0001 C CNN
F 3 "~" H 3900 1950 50  0001 C CNN
	1    3900 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 1950 4150 1950
Text GLabel 4150 1950 2    50   Output ~ 0
VBATT
$Comp
L VL53L0X:VL53L0CXV0DH_1 U2
U 1 1 5FC59DEF
P 7700 2500
F 0 "U2" H 8700 2887 60  0000 C CNN
F 1 "VL53L4CXV0DH_1" H 8700 2781 60  0000 C CNN
F 2 "VL53L0X:VL53L0CXV0DH&slash_1" H 8700 2740 60  0001 C CNN
F 3 "" H 7700 2500 60  0000 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
$Comp
L B2B-PH-K-S_LF_SN:B2B-PH-K-S(LF)(SN) J2
U 1 1 5FC59729
P 3750 2900
F 0 "J2" H 3700 3150 50  0000 L CNN
F 1 "B2B-PH-K-S(LF)(SN)" H 3350 3050 50  0000 L CNN
F 2 "B2B-PH-K-S_LF_SN:JST_B2B-PH-K-S(LF)(SN)" H 3750 2900 50  0001 L BNN
F 3 "" H 3750 2900 50  0001 L BNN
F 4 "N/A" H 3750 2900 50  0001 L BNN "PARTREV"
F 5 "IPC-7251" H 3750 2900 50  0001 L BNN "STANDARD"
F 6 "https://www.digikey.com.ua/product-detail/en/jst-sales-america-inc/B2B-PH-K-S_LF__SN_/455-1704-ND/926611?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 3750 2900 50  0001 L BNN "DIGI-KEY_PURCHASE_URL"
F 7 "455-1704-ND" H 3750 2900 50  0001 L BNN "DIGI-KEY_PART_NUMBER"
F 8 "JST Sales" H 3750 2900 50  0001 L BNN "MF"
F 9 "None" H 3750 2900 50  0001 L BNN "PACKAGE"
F 10 "PH Series 2 Position 2 mm Pitch Through Hole Top Entry Shrouded Header" H 3750 2900 50  0001 L BNN "DESCRIPTION"
F 11 "B2B-PH-K-S_LF__SN_" H 3750 2900 50  0001 L BNN "MP"
	1    3750 2900
	1    0    0    -1  
$EndComp
$Comp
L 1734742-8:1734742-8 J1
U 1 1 5FC65909
P 2250 2900
F 0 "J1" H 2250 3565 50  0000 C CNN
F 1 "1734742-8" H 2250 3474 50  0000 C CNN
F 2 "1734742-8:TE_1734742-8" H 2650 3150 50  0001 L BNN
F 3 "" H 1900 1950 50  0001 L BNN
F 4 "1734742-8" H 2650 3050 50  0001 L BNN "Comment"
F 5 "Compliant" H 2650 2950 50  0001 L BNN "EU_RoHS_Compliance"
	1    2250 2900
	1    0    0    -1  
$EndComp
Text GLabel 1550 2600 0    50   Output ~ 0
V2.8
Wire Wire Line
	1550 2600 1850 2600
$Comp
L power:GND #PWR0106
U 1 1 5FC4ACDE
P 1700 3300
F 0 "#PWR0106" H 1700 3050 50  0001 C CNN
F 1 "GND" H 1800 3150 50  0000 R CNN
F 2 "" H 1700 3300 50  0001 C CNN
F 3 "" H 1700 3300 50  0001 C CNN
	1    1700 3300
	1    0    0    -1  
$EndComp
Text GLabel 1550 2500 0    50   Output ~ 0
VBATT
Text GLabel 1550 2800 0    50   Output ~ 0
XSHUT2
Wire Wire Line
	1550 2500 1850 2500
Wire Wire Line
	1550 2800 1850 2800
Text GLabel 1550 2700 0    50   Output ~ 0
XSHUT1
Wire Wire Line
	1850 2700 1550 2700
Wire Wire Line
	1850 3200 1700 3200
Wire Wire Line
	1700 3200 1700 3300
Wire Wire Line
	1850 2900 1700 2900
Connection ~ 1700 3200
Text GLabel 1550 3100 0    50   BiDi ~ 0
SCL
Wire Wire Line
	1850 3100 1550 3100
Text GLabel 1550 3000 0    50   BiDi ~ 0
SDA
Wire Wire Line
	1850 3000 1550 3000
Text GLabel 6550 2300 0    50   Input ~ 0
XSHUT2
Wire Wire Line
	1700 2900 1700 3200
NoConn ~ 2650 3300
NoConn ~ 2650 3400
Text GLabel 3150 2900 0    50   Output ~ 0
VBATT
Wire Wire Line
	3150 2900 3450 2900
Wire Wire Line
	3350 3000 3350 3150
Wire Wire Line
	3450 3000 3350 3000
$Comp
L power:GND #PWR0109
U 1 1 5FC7E307
P 3350 3150
F 0 "#PWR0109" H 3350 2900 50  0001 C CNN
F 1 "GND" H 3450 3000 50  0000 R CNN
F 2 "" H 3350 3150 50  0001 C CNN
F 3 "" H 3350 3150 50  0001 C CNN
	1    3350 3150
	1    0    0    -1  
$EndComp
$Comp
L VL53L4CD:VL53L4CDV0DH_1 U1
U 1 1 61F7C5AD
P 7700 3950
F 0 "U1" H 8700 4337 60  0000 C CNN
F 1 "VL53L4CDV0DH_1" H 8700 4231 60  0000 C CNN
F 2 "VL53L4CD:VL53L4CDV0DH" H 8700 4190 60  0001 C CNN
F 3 "" H 7700 3950 60  0000 C CNN
	1    7700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3950 9800 3950
$Comp
L power:GND #PWR0105
U 1 1 61F8161E
P 9800 4550
F 0 "#PWR0105" H 9800 4300 50  0001 C CNN
F 1 "GND" H 9900 4400 50  0000 R CNN
F 2 "" H 9800 4550 50  0001 C CNN
F 3 "" H 9800 4550 50  0001 C CNN
	1    9800 4550
	1    0    0    -1  
$EndComp
Text GLabel 10150 4050 2    50   Input ~ 0
V2.8
Text GLabel 10150 4250 2    50   BiDi ~ 0
SDA
Text GLabel 10150 4150 2    50   BiDi ~ 0
SCL
Wire Wire Line
	9700 4050 10150 4050
Wire Wire Line
	9700 4150 10150 4150
Wire Wire Line
	9700 4250 10150 4250
Wire Wire Line
	9800 3950 9800 4550
NoConn ~ 9700 4450
Wire Wire Line
	7100 4350 7300 4350
Wire Wire Line
	7700 4450 7500 4450
Wire Wire Line
	7500 4450 7500 4250
$Comp
L power:GND #PWR0107
U 1 1 61F87B19
P 7500 4550
F 0 "#PWR0107" H 7500 4300 50  0001 C CNN
F 1 "GND" H 7600 4400 50  0000 R CNN
F 2 "" H 7500 4550 50  0001 C CNN
F 3 "" H 7500 4550 50  0001 C CNN
	1    7500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4450 7500 4550
Connection ~ 7500 4450
Wire Wire Line
	7700 4150 7500 4150
Wire Wire Line
	7700 4250 7500 4250
Wire Wire Line
	7500 4250 7500 4150
Wire Wire Line
	7500 4150 7500 4050
Wire Wire Line
	7500 4050 7700 4050
Connection ~ 7500 4150
Connection ~ 7500 4250
Wire Wire Line
	7300 3750 7300 4350
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 6050 2500
Wire Wire Line
	5350 2500 5550 2500
Wire Wire Line
	6700 3950 6700 4350
Wire Wire Line
	6700 2900 6700 3950
Connection ~ 6700 3950
Wire Wire Line
	6700 3950 7700 3950
Connection ~ 7300 4350
Wire Wire Line
	7300 4350 7700 4350
$EndSCHEMATC
