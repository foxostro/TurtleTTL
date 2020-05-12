EESchema Schematic File Version 4
LIBS:SoundCard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2950 3000 0    50   Input ~ 0
DataBus[0..7]
Text HLabel 2950 3100 0    50   Input ~ 0
AddressBus[0..15]
Text HLabel 2950 4200 0    50   Input ~ 0
~WR
Text HLabel 8050 3200 2    50   Output ~ 0
VOUTA
Text HLabel 8050 3300 2    50   Output ~ 0
VOUTB
Text HLabel 8050 3400 2    50   Output ~ 0
VOUTC
Text HLabel 8050 3500 2    50   Output ~ 0
VOUTD
Text Label 4750 3200 0    50   ~ 0
DataBus0
Text Label 4750 3300 0    50   ~ 0
DataBus1
Text Label 4750 3400 0    50   ~ 0
DataBus2
Text Label 4750 3500 0    50   ~ 0
DataBus3
Text Label 4750 3600 0    50   ~ 0
DataBus4
Text Label 4750 3700 0    50   ~ 0
DataBus5
Text Label 4750 3800 0    50   ~ 0
DataBus6
Text Label 4750 3900 0    50   ~ 0
DataBus7
Entry Wire Line
	4750 3200 4650 3100
Entry Wire Line
	4750 3300 4650 3200
Entry Wire Line
	4750 3400 4650 3300
Entry Wire Line
	4750 3500 4650 3400
Entry Wire Line
	4750 3600 4650 3500
Entry Wire Line
	4750 3700 4650 3600
Entry Wire Line
	4750 3800 4650 3700
Entry Wire Line
	4750 3900 4650 3800
Wire Wire Line
	4750 3400 5250 3400
Wire Wire Line
	4750 3700 5250 3700
Wire Wire Line
	4750 3900 5250 3900
Wire Wire Line
	4750 3200 5250 3200
Wire Wire Line
	4750 3300 5250 3300
Wire Wire Line
	4750 3500 5250 3500
Wire Wire Line
	4750 3600 5250 3600
Wire Wire Line
	4750 3800 5250 3800
$Comp
L Analog_DAC:MAX505 U2
U 1 1 5EC02CCC
P 5800 3750
F 0 "U2" H 5800 3900 50  0000 C CNN
F 1 "MAX505" H 5800 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 5800 3750 50  0001 C CNN
F 3 "" H 5800 3750 50  0001 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
Wire Bus Line
	2950 3000 4650 3000
Wire Wire Line
	6400 3200 8050 3200
Wire Wire Line
	8050 3300 6400 3300
Wire Wire Line
	6400 3400 8050 3400
Wire Wire Line
	8050 3500 6400 3500
$Comp
L power:VCC #PWR029
U 1 1 5EC0A50F
P 6600 3900
F 0 "#PWR029" H 6600 3750 50  0001 C CNN
F 1 "VCC" H 6618 4073 50  0000 C CNN
F 2 "" H 6600 3900 50  0001 C CNN
F 3 "" H 6600 3900 50  0001 C CNN
	1    6600 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 3900 6600 4000
Wire Wire Line
	6600 4300 6400 4300
Wire Wire Line
	6400 4200 6600 4200
Connection ~ 6600 4200
Wire Wire Line
	6600 4200 6600 4300
Wire Wire Line
	6400 4100 6600 4100
Connection ~ 6600 4100
Wire Wire Line
	6600 4100 6600 4200
Wire Wire Line
	6400 4000 6600 4000
Connection ~ 6600 4000
Wire Wire Line
	6600 4000 6600 4100
$Comp
L power:GND #PWR024
U 1 1 5EC0D37A
P 5700 4750
F 0 "#PWR024" H 5700 4500 50  0001 C CNN
F 1 "GND" H 5705 4577 50  0000 C CNN
F 2 "" H 5700 4750 50  0001 C CNN
F 3 "" H 5700 4750 50  0001 C CNN
	1    5700 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5EC0F70B
P 5800 2850
F 0 "#PWR025" H 5800 2700 50  0001 C CNN
F 1 "VCC" H 5818 3023 50  0000 C CNN
F 2 "" H 5800 2850 50  0001 C CNN
F 3 "" H 5800 2850 50  0001 C CNN
	1    5800 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 2850 5800 2950
Wire Wire Line
	2950 4200 5250 4200
$Comp
L Device:C C?
U 1 1 5ED820A8
P 6200 2350
AR Path="/5ED820A8" Ref="C?"  Part="1" 
AR Path="/5EC13923/5ED820A8" Ref="C?"  Part="1" 
AR Path="/5EC061D7/5ED820A8" Ref="C6"  Part="1" 
F 0 "C6" H 6315 2396 50  0000 L CNN
F 1 "100nF" H 6315 2305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6238 2200 50  0001 C CNN
F 3 "~" H 6200 2350 50  0001 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 5ED8252F
P 6200 2200
F 0 "#PWR027" H 6200 2050 50  0001 C CNN
F 1 "VCC" H 6218 2373 50  0000 C CNN
F 2 "" H 6200 2200 50  0001 C CNN
F 3 "" H 6200 2200 50  0001 C CNN
	1    6200 2200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5ED828C0
P 6200 2500
F 0 "#PWR028" H 6200 2250 50  0001 C CNN
F 1 "GND" H 6205 2327 50  0000 C CNN
F 2 "" H 6200 2500 50  0001 C CNN
F 3 "" H 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4550 5800 4650
Wire Wire Line
	5800 4650 5700 4650
Wire Wire Line
	5700 4650 5700 4550
Wire Wire Line
	5700 4650 5700 4750
Connection ~ 5700 4650
$Comp
L power:GNDA #PWR026
U 1 1 5ED91CE7
P 5900 4750
F 0 "#PWR026" H 5900 4500 50  0001 C CNN
F 1 "GNDA" H 5905 4577 50  0000 C CNN
F 2 "" H 5900 4750 50  0001 C CNN
F 3 "" H 5900 4750 50  0001 C CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4750 5900 4550
$Comp
L power:GND #PWR0106
U 1 1 5EDCDF8E
P 5250 4300
F 0 "#PWR0106" H 5250 4050 50  0001 C CNN
F 1 "GND" V 5255 4172 50  0000 R CNN
F 2 "" H 5250 4300 50  0001 C CNN
F 3 "" H 5250 4300 50  0001 C CNN
	1    5250 4300
	0    1    1    0   
$EndComp
Text Label 3200 3400 0    50   ~ 0
AddressBus15
Text Label 3200 3500 0    50   ~ 0
AddressBus14
Text Label 3200 3600 0    50   ~ 0
AddressBus13
Text Label 3200 3700 0    50   ~ 0
AddressBus12
Text Label 3200 3800 0    50   ~ 0
AddressBus11
Text Label 3200 3900 0    50   ~ 0
AddressBus10
Text Label 3200 4000 0    50   ~ 0
AddressBus9
Text Label 3200 4100 0    50   ~ 0
AddressBus8
Entry Wire Line
	3200 3400 3100 3300
Entry Wire Line
	3200 3500 3100 3400
Entry Wire Line
	3200 3600 3100 3500
Entry Wire Line
	3200 3700 3100 3600
Entry Wire Line
	3200 3800 3100 3700
Entry Wire Line
	3200 3900 3100 3800
Entry Wire Line
	3200 4000 3100 3900
Entry Wire Line
	3200 4100 3100 4000
Text Label 3950 4100 0    50   ~ 0
AddressBus1
Text Label 3950 4000 0    50   ~ 0
AddressBus0
Text Label 3950 3900 0    50   ~ 0
AddressBus2
Text Label 3950 3800 0    50   ~ 0
AddressBus3
Text Label 3950 3700 0    50   ~ 0
AddressBus4
Text Label 3950 3600 0    50   ~ 0
AddressBus5
Text Label 3950 3500 0    50   ~ 0
AddressBus6
Text Label 3950 3400 0    50   ~ 0
AddressBus7
Wire Bus Line
	2950 3100 3100 3100
Connection ~ 3100 3100
Wire Bus Line
	3100 3100 3850 3100
Entry Wire Line
	3950 3400 3850 3300
Entry Wire Line
	3950 3500 3850 3400
Entry Wire Line
	3950 3600 3850 3500
Entry Wire Line
	3950 3700 3850 3600
Entry Wire Line
	3950 3800 3850 3700
Entry Wire Line
	3950 3900 3850 3800
Entry Wire Line
	3950 4000 3850 3900
Entry Wire Line
	3950 4100 3850 4000
NoConn ~ 4450 3400
NoConn ~ 4450 3500
NoConn ~ 4450 3600
NoConn ~ 4450 3700
NoConn ~ 4450 3800
NoConn ~ 4450 3900
Wire Wire Line
	3950 3900 4450 3900
Wire Wire Line
	3950 3800 4450 3800
Wire Wire Line
	3950 3700 4450 3700
Wire Wire Line
	3950 3600 4450 3600
Wire Wire Line
	3950 3500 4450 3500
Wire Wire Line
	3950 3400 4450 3400
NoConn ~ 3750 3400
NoConn ~ 3750 3500
NoConn ~ 3750 3600
NoConn ~ 3750 3700
NoConn ~ 3750 3800
NoConn ~ 3750 3900
NoConn ~ 3750 4000
NoConn ~ 3750 4100
Wire Wire Line
	3200 4100 3750 4100
Wire Wire Line
	3200 4000 3750 4000
Wire Wire Line
	3200 3900 3750 3900
Wire Wire Line
	3200 3800 3750 3800
Wire Wire Line
	3200 3700 3750 3700
Wire Wire Line
	3200 3600 3750 3600
Wire Wire Line
	3200 3500 3750 3500
Wire Wire Line
	3200 3400 3750 3400
Wire Wire Line
	3950 4000 5250 4000
Wire Wire Line
	3950 4100 5250 4100
Wire Bus Line
	3100 3100 3100 4000
Wire Bus Line
	4650 3000 4650 3800
Wire Bus Line
	3850 3100 3850 4000
$EndSCHEMATC
