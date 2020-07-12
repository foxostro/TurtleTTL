EESchema Schematic File Version 4
LIBS:SoundCard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "The output levels on VOUT2 are tailored to be easy to shift to line-level."
Comment4 "The second dual VCA in the sound card."
$EndDescr
$Comp
L Audio:AS3360 U?
U 2 1 5F25482C
P 5600 4400
AR Path="/5F17CB2D/5F25482C" Ref="U?"  Part="2" 
AR Path="/5F138FD4/5F25482C" Ref="U?"  Part="2" 
AR Path="/5F13FB70/5F25482C" Ref="U?"  Part="2" 
AR Path="/5F23C86F/5F25482C" Ref="U?"  Part="2" 
F 0 "U?" H 5300 4950 50  0000 C CNN
F 1 "AS3360" H 5300 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6300 3700 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3360.pdf" H 6250 3750 50  0001 C CNN
	2    5600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F254832
P 5700 3100
AR Path="/5EC13923/5F254832" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F254832" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F254832" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F254832" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F254832" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F254832" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 2850 50  0001 C CNN
F 1 "GNDA" H 5705 2927 50  0000 C CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F254838
P 5500 3100
AR Path="/5EC13923/5F254838" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F254838" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F254838" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F254838" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F254838" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F254838" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 3200 50  0001 C CNN
F 1 "-15V" H 5515 3273 50  0000 C CNN
F 2 "" H 5500 3100 50  0001 C CNN
F 3 "" H 5500 3100 50  0001 C CNN
	1    5500 3100
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5F25483E
P 5600 3900
AR Path="/5EC13923/5F25483E" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F25483E" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F25483E" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F25483E" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F25483E" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F25483E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 3750 50  0001 C CNN
F 1 "+15V" H 5615 4073 50  0000 C CNN
F 2 "" H 5600 3900 50  0001 C CNN
F 3 "" H 5600 3900 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3900 5600 4000
$Comp
L Device:R_US R?
U 1 1 5F254845
P 6250 4650
AR Path="/5F17CB2D/5F254845" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F254845" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F254845" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F254845" Ref="R?"  Part="1" 
F 0 "R?" H 6318 4696 50  0000 L CNN
F 1 "47kΩ" H 6318 4605 50  0000 L CNN
F 2 "" V 6290 4640 50  0001 C CNN
F 3 "~" H 6250 4650 50  0001 C CNN
	1    6250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F25484B
P 6250 4900
AR Path="/5EC13923/5F25484B" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F25484B" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F25484B" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F25484B" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F25484B" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F25484B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 4650 50  0001 C CNN
F 1 "GNDA" H 6255 4727 50  0000 C CNN
F 2 "" H 6250 4900 50  0001 C CNN
F 3 "" H 6250 4900 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4800 6250 4900
Wire Wire Line
	6000 4500 6250 4500
$Comp
L power:GNDA #PWR?
U 1 1 5F254853
P 6250 3100
AR Path="/5EC13923/5F254853" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F254853" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F254853" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F254853" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F254853" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F254853" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 2850 50  0001 C CNN
F 1 "GNDA" H 6255 2927 50  0000 C CNN
F 2 "" H 6250 3100 50  0001 C CNN
F 3 "" H 6250 3100 50  0001 C CNN
	1    6250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4800 5700 4900
$Comp
L power:GNDA #PWR?
U 1 1 5F25485A
P 5700 4900
AR Path="/5EC13923/5F25485A" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F25485A" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F25485A" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F25485A" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F25485A" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F25485A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 4650 50  0001 C CNN
F 1 "GNDA" H 5705 4727 50  0000 C CNN
F 2 "" H 5700 4900 50  0001 C CNN
F 3 "" H 5700 4900 50  0001 C CNN
	1    5700 4900
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F254860
P 5500 4900
AR Path="/5EC13923/5F254860" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F254860" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F254860" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F254860" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F254860" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F254860" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 5000 50  0001 C CNN
F 1 "-15V" H 5515 5073 50  0000 C CNN
F 2 "" H 5500 4900 50  0001 C CNN
F 3 "" H 5500 4900 50  0001 C CNN
	1    5500 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 4800 5600 4850
Wire Wire Line
	5600 4850 5500 4850
Wire Wire Line
	5500 4850 5500 4900
NoConn ~ 6000 4300
NoConn ~ 5200 4300
$Comp
L Device:R_US R?
U 1 1 5F25486B
P 4100 3700
AR Path="/5F17CB2D/5F25486B" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F25486B" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F25486B" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F25486B" Ref="R?"  Part="1" 
F 0 "R?" H 4168 3746 50  0000 L CNN
F 1 "2.4kΩ" H 4168 3655 50  0000 L CNN
F 2 "" V 4140 3690 50  0001 C CNN
F 3 "~" H 4100 3700 50  0001 C CNN
	1    4100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4200 4100 3850
$Comp
L Device:R_US R?
U 1 1 5F254872
P 3600 4200
AR Path="/5F17CB2D/5F254872" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F254872" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F254872" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F254872" Ref="R?"  Part="1" 
F 0 "R?" V 3395 4200 50  0000 C CNN
F 1 "16kΩ" V 3486 4200 50  0000 C CNN
F 2 "" V 3640 4190 50  0001 C CNN
F 3 "~" H 3600 4200 50  0001 C CNN
	1    3600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 4200 4100 4200
$Comp
L power:GNDA #PWR?
U 1 1 5F254879
P 4950 3350
AR Path="/5EC13923/5F254879" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F254879" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F254879" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F254879" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F254879" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F254879" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 3100 50  0001 C CNN
F 1 "GNDA" H 4955 3177 50  0000 C CNN
F 2 "" H 4950 3350 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3200 4950 3350
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 5200 4200
Wire Wire Line
	4100 3300 4600 3300
Wire Wire Line
	4100 3300 4100 3550
Text HLabel 2800 4200 0    50   Input ~ 0
CV2
Wire Wire Line
	2800 4200 3450 4200
Text Notes 2400 4350 0    50   ~ 0
CV2 is in [0, +2] volts
Connection ~ 4100 3300
Text Notes 2300 2550 0    50   ~ 0
CV1 is in [0, +2] volts
Wire Wire Line
	2800 2400 3450 2400
Text HLabel 2800 2400 0    50   Input ~ 0
CV1
Connection ~ 4950 2700
Wire Wire Line
	4600 2700 4950 2700
Wire Wire Line
	4600 3300 4600 2700
Wire Wire Line
	4100 3050 4100 3300
Wire Wire Line
	3750 2400 4100 2400
Connection ~ 4100 2400
Wire Wire Line
	4950 2700 4950 2900
Wire Wire Line
	5200 2700 4950 2700
Wire Wire Line
	4100 2400 4100 2750
$Comp
L Device:C C?
U 1 1 5F254894
P 4950 3050
AR Path="/5F17CB2D/5F254894" Ref="C?"  Part="1" 
AR Path="/5F138FD4/5F254894" Ref="C?"  Part="1" 
AR Path="/5F13FB70/5F254894" Ref="C?"  Part="1" 
AR Path="/5F23C86F/5F254894" Ref="C?"  Part="1" 
F 0 "C?" H 5065 3096 50  0000 L CNN
F 1 "5nF" H 5065 3005 50  0000 L CNN
F 2 "" H 4988 2900 50  0001 C CNN
F 3 "~" H 4950 3050 50  0001 C CNN
	1    4950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F25489A
P 3600 2400
AR Path="/5F17CB2D/5F25489A" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F25489A" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F25489A" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F25489A" Ref="R?"  Part="1" 
F 0 "R?" V 3395 2400 50  0000 C CNN
F 1 "16kΩ" V 3486 2400 50  0000 C CNN
F 2 "" V 3640 2390 50  0001 C CNN
F 3 "~" H 3600 2400 50  0001 C CNN
	1    3600 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2400 4100 2400
$Comp
L Device:R_US R?
U 1 1 5F2548A1
P 4100 2900
AR Path="/5F17CB2D/5F2548A1" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F2548A1" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F2548A1" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F2548A1" Ref="R?"  Part="1" 
F 0 "R?" H 4032 2854 50  0000 R CNN
F 1 "2.4kΩ" H 4032 2945 50  0000 R CNN
F 2 "" V 4140 2890 50  0001 C CNN
F 3 "~" H 4100 2900 50  0001 C CNN
	1    4100 2900
	-1   0    0    1   
$EndComp
NoConn ~ 5200 2500
NoConn ~ 6000 2500
Text HLabel 9300 2800 2    50   Output ~ 0
VOUT1
Wire Wire Line
	5500 3050 5500 3100
Wire Wire Line
	5600 3050 5500 3050
Wire Wire Line
	5600 3000 5600 3050
Wire Wire Line
	6000 2700 6250 2700
Wire Wire Line
	6250 3000 6250 3100
$Comp
L Device:R_US R?
U 1 1 5F2548AF
P 6250 2850
AR Path="/5F17CB2D/5F2548AF" Ref="R?"  Part="1" 
AR Path="/5F138FD4/5F2548AF" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F2548AF" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F2548AF" Ref="R?"  Part="1" 
F 0 "R?" H 6318 2896 50  0000 L CNN
F 1 "47kΩ" H 6318 2805 50  0000 L CNN
F 2 "" V 6290 2840 50  0001 C CNN
F 3 "~" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2100 5600 2200
Wire Wire Line
	5700 3000 5700 3100
$Comp
L power:+15V #PWR?
U 1 1 5F2548B7
P 5600 2100
AR Path="/5EC13923/5F2548B7" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F2548B7" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F2548B7" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F2548B7" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F2548B7" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F2548B7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 1950 50  0001 C CNN
F 1 "+15V" H 5615 2273 50  0000 C CNN
F 2 "" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
$Comp
L Audio:AS3360 U?
U 1 1 5F2548BD
P 5600 2600
AR Path="/5F17CB2D/5F2548BD" Ref="U?"  Part="1" 
AR Path="/5F138FD4/5F2548BD" Ref="U?"  Part="1" 
AR Path="/5F13FB70/5F2548BD" Ref="U?"  Part="1" 
AR Path="/5F23C86F/5F2548BD" Ref="U?"  Part="1" 
F 0 "U?" H 5250 3200 50  0000 C CNN
F 1 "AS3360" H 5250 3100 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6300 1900 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3360.pdf" H 6250 1950 50  0001 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4800 4100 4400
Wire Wire Line
	4100 4400 5200 4400
Text HLabel 2800 4800 0    50   Input ~ 0
VIN2
Text HLabel 2800 1950 0    50   Input ~ 0
VIN1
Wire Wire Line
	4600 1950 4600 2600
Wire Wire Line
	4600 2600 5200 2600
$Comp
L power:+15V #PWR?
U 1 1 5F2548C9
P 12350 2850
AR Path="/5F2548C9" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F2548C9" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F2548C9" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F2548C9" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F2548C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12350 2700 50  0001 C CNN
F 1 "+15V" H 12365 3023 50  0000 C CNN
F 2 "" H 12350 2850 50  0001 C CNN
F 3 "" H 12350 2850 50  0001 C CNN
	1    12350 2850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 5F2548CF
P 12350 3450
AR Path="/5F2548CF" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F2548CF" Ref="#PWR?"  Part="1" 
AR Path="/5F138FD4/5F2548CF" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F2548CF" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F2548CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12350 3550 50  0001 C CNN
F 1 "-15V" H 12365 3623 50  0000 C CNN
F 2 "" H 12350 3450 50  0001 C CNN
F 3 "" H 12350 3450 50  0001 C CNN
	1    12350 3450
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5F2548D5
P 12450 3150
AR Path="/5F2548D5" Ref="U?"  Part="3" 
AR Path="/5F17CB2D/5F2548D5" Ref="U?"  Part="3" 
AR Path="/5F138FD4/5F2548D5" Ref="U?"  Part="3" 
AR Path="/5F13FB70/5F2548D5" Ref="U?"  Part="3" 
AR Path="/5F23C86F/5F2548D5" Ref="U?"  Part="3" 
F 0 "U?" H 12263 3104 50  0000 R CNN
F 1 "TL072" H 12263 3195 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 12450 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 12450 3150 50  0001 C CNN
	3    12450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1950 4600 1950
Wire Wire Line
	2800 4800 4100 4800
Text Notes 2400 5050 0    50   ~ 0
VIN2 needs 47k series resistor\nbefore entering this subcircuit.
Text Notes 2300 1850 0    50   ~ 0
VIN1 needs 47k series resistor\nbefore entering this subcircuit.
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5F2548DF
P 7950 2800
AR Path="/5F2548DF" Ref="U?"  Part="2" 
AR Path="/5F0AFE61/5F2548DF" Ref="U?"  Part="1" 
AR Path="/5F17CB2D/5F2548DF" Ref="U?"  Part="1" 
AR Path="/5F13FB70/5F2548DF" Ref="U?"  Part="1" 
AR Path="/5F23C86F/5F2548DF" Ref="U?"  Part="1" 
F 0 "U?" H 7950 3150 50  0000 C CNN
F 1 "TL072" H 7950 3050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7950 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7950 2800 50  0001 C CNN
	1    7950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2900 7550 2900
Connection ~ 8400 2800
Wire Wire Line
	8400 2800 8250 2800
$Comp
L power:GNDA #PWR?
U 1 1 5F2548E8
P 6850 3450
AR Path="/5EC13923/5F2548E8" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F2548E8" Ref="#PWR?"  Part="1" 
AR Path="/5F2548E8" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F2548E8" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F2548E8" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F2548E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 3200 50  0001 C CNN
F 1 "GNDA" H 6855 3277 50  0000 C CNN
F 2 "" H 6850 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F2548EE
P 7150 3350
AR Path="/5F2548EE" Ref="R?"  Part="1" 
AR Path="/5EC13923/5F2548EE" Ref="R?"  Part="1" 
AR Path="/5F0AFE61/5F2548EE" Ref="R?"  Part="1" 
AR Path="/5F17CB2D/5F2548EE" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F2548EE" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F2548EE" Ref="R?"  Part="1" 
F 0 "R?" V 7355 3350 50  0000 C CNN
F 1 "10kΩ" V 7264 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7190 3340 50  0001 C CNN
F 3 "~" H 7150 3350 50  0001 C CNN
	1    7150 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 3450 6850 3350
Wire Wire Line
	6850 3350 7000 3350
Wire Wire Line
	7550 3350 7300 3350
Wire Wire Line
	7550 2900 7550 3350
$Comp
L Device:R_US R?
U 1 1 5F2548F8
P 7950 3350
AR Path="/5F2548F8" Ref="R?"  Part="1" 
AR Path="/5EC13923/5F2548F8" Ref="R?"  Part="1" 
AR Path="/5F0AFE61/5F2548F8" Ref="R?"  Part="1" 
AR Path="/5F17CB2D/5F2548F8" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F2548F8" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F2548F8" Ref="R?"  Part="1" 
F 0 "R?" V 8155 3350 50  0000 C CNN
F 1 "20kΩ" V 8064 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7990 3340 50  0001 C CNN
F 3 "~" H 7950 3350 50  0001 C CNN
	1    7950 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3350 7550 3350
Connection ~ 7550 3350
Wire Wire Line
	8400 3350 8100 3350
Wire Wire Line
	8400 2800 8400 3350
Text Notes 8350 2750 0    50   ~ 0
[0, +15V]
Text Notes 7200 2650 0    50   ~ 0
[0, +5V]
Wire Wire Line
	6250 2700 7650 2700
Wire Wire Line
	8400 2800 9300 2800
Text Notes 9100 5050 0    50   ~ 0
[-2.4, 0V]
Text Notes 6700 4450 0    50   ~ 0
[0, +5V]
Text HLabel 9550 5100 2    50   Output ~ 0
VOUT2
Text Notes 10650 5450 2    50   ~ 0
When we remove the DC offset from\nthis signal it will be at reasonable\nline-level of 1.7V peak-to-peak.
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5F254906
P 8200 5100
AR Path="/5F254906" Ref="U?"  Part="2" 
AR Path="/5F0AFE61/5F254906" Ref="U?"  Part="1" 
AR Path="/5F17CB2D/5F254906" Ref="U?"  Part="2" 
AR Path="/5F13FB70/5F254906" Ref="U?"  Part="2" 
AR Path="/5F23C86F/5F254906" Ref="U?"  Part="2" 
F 0 "U?" H 8200 4750 50  0000 C CNN
F 1 "TL072" H 8200 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8200 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8200 5100 50  0001 C CNN
	2    8200 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	8500 5100 8700 5100
$Comp
L power:GNDA #PWR?
U 1 1 5F28F98F
P 7650 5300
AR Path="/5EC13923/5F28F98F" Ref="#PWR?"  Part="1" 
AR Path="/5F0AFE61/5F28F98F" Ref="#PWR?"  Part="1" 
AR Path="/5F28F98F" Ref="#PWR?"  Part="1" 
AR Path="/5F17CB2D/5F28F98F" Ref="#PWR?"  Part="1" 
AR Path="/5F13FB70/5F28F98F" Ref="#PWR?"  Part="1" 
AR Path="/5F23C86F/5F28F98F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 5050 50  0001 C CNN
F 1 "GNDA" H 7655 5127 50  0000 C CNN
F 2 "" H 7650 5300 50  0001 C CNN
F 3 "" H 7650 5300 50  0001 C CNN
	1    7650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5300 7650 5200
Wire Wire Line
	7650 5200 7900 5200
$Comp
L Device:R_US R?
U 1 1 5F29248F
P 7350 4500
AR Path="/5F29248F" Ref="R?"  Part="1" 
AR Path="/5EC13923/5F29248F" Ref="R?"  Part="1" 
AR Path="/5F0AFE61/5F29248F" Ref="R?"  Part="1" 
AR Path="/5F17CB2D/5F29248F" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F29248F" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F29248F" Ref="R?"  Part="1" 
F 0 "R?" V 7555 4500 50  0000 C CNN
F 1 "10kΩ" V 7464 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7390 4490 50  0001 C CNN
F 3 "~" H 7350 4500 50  0001 C CNN
	1    7350 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 4500 7650 4500
Wire Wire Line
	7200 4500 6250 4500
Connection ~ 6250 4500
Wire Wire Line
	7650 5000 7900 5000
$Comp
L Device:R_US R?
U 1 1 5F29B034
P 8150 4500
AR Path="/5F29B034" Ref="R?"  Part="1" 
AR Path="/5EC13923/5F29B034" Ref="R?"  Part="1" 
AR Path="/5F0AFE61/5F29B034" Ref="R?"  Part="1" 
AR Path="/5F17CB2D/5F29B034" Ref="R?"  Part="1" 
AR Path="/5F13FB70/5F29B034" Ref="R?"  Part="1" 
AR Path="/5F23C86F/5F29B034" Ref="R?"  Part="1" 
F 0 "R?" V 8355 4500 50  0000 C CNN
F 1 "4.7kΩ" V 8264 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8190 4490 50  0001 C CNN
F 3 "~" H 8150 4500 50  0001 C CNN
	1    8150 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4500 7650 5000
Wire Wire Line
	8000 4500 7650 4500
Connection ~ 7650 4500
Wire Wire Line
	8300 4500 8700 4500
Wire Wire Line
	8700 4500 8700 5100
Connection ~ 8700 5100
Wire Wire Line
	8700 5100 9550 5100
$EndSCHEMATC
