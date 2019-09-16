EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 15 20
Title "Control Word Display"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Bus Line
	1550 2500 8850 2500
Text Notes 3750 5450 0    50   ~ 0
TODO: These signals are active-low. The LEDs should be wired to light up when they go active.
Text Label 8950 3150 1    50   ~ 0
ControlWord00
Text Label 8600 3150 1    50   ~ 0
ControlWord01
Text Notes 5650 4250 0    50   ~ 0
Control Word LED Indicators
Wire Wire Line
	8800 4050 8950 4050
Connection ~ 8800 4050
Wire Wire Line
	8800 4050 8800 4150
Wire Wire Line
	8950 2600 8950 3200
Wire Wire Line
	8600 2600 8600 3200
Wire Wire Line
	8250 2600 8250 3200
Wire Wire Line
	7900 2600 7900 3200
Wire Wire Line
	7550 2600 7550 3200
Wire Wire Line
	7200 2600 7200 3200
Wire Wire Line
	6850 2600 6850 3200
Wire Wire Line
	6500 2600 6500 3200
Wire Wire Line
	6150 2600 6150 3200
Wire Wire Line
	5800 2600 5800 3200
Wire Wire Line
	5450 2600 5450 3200
Wire Wire Line
	5100 2600 5100 3200
Wire Wire Line
	4750 2600 4750 3200
Wire Wire Line
	4400 2600 4400 3200
Wire Wire Line
	4050 2600 4050 3200
Wire Wire Line
	3700 2600 3700 3200
Text Label 8250 3150 1    50   ~ 0
ControlWord02
Text Label 7900 3150 1    50   ~ 0
ControlWord03
Text Label 7550 3150 1    50   ~ 0
ControlWord04
Text Label 7200 3150 1    50   ~ 0
ControlWord05
Text Label 6850 3150 1    50   ~ 0
ControlWord06
Text Label 6500 3150 1    50   ~ 0
ControlWord07
Text Label 6150 3150 1    50   ~ 0
ControlWord08
Text Label 5800 3150 1    50   ~ 0
ControlWord09
Text Label 5450 3150 1    50   ~ 0
ControlWord10
Text Label 5100 3150 1    50   ~ 0
ControlWord11
Text Label 4750 3150 1    50   ~ 0
ControlWord12
Text Label 4400 3150 1    50   ~ 0
ControlWord13
Text Label 4050 3150 1    50   ~ 0
ControlWord14
Text Label 3700 3150 1    50   ~ 0
ControlWord15
Text GLabel 1550 2500 0    50   Input ~ 0
ControlWord
Entry Wire Line
	8950 2600 8850 2500
Entry Wire Line
	8600 2600 8500 2500
Entry Wire Line
	8250 2600 8150 2500
Entry Wire Line
	7900 2600 7800 2500
Entry Wire Line
	7550 2600 7450 2500
Entry Wire Line
	7200 2600 7100 2500
Entry Wire Line
	6850 2600 6750 2500
Entry Wire Line
	6500 2600 6400 2500
Entry Wire Line
	6150 2600 6050 2500
Entry Wire Line
	5800 2600 5700 2500
Entry Wire Line
	5450 2600 5350 2500
Entry Wire Line
	5100 2600 5000 2500
Entry Wire Line
	4750 2600 4650 2500
Entry Wire Line
	4400 2600 4300 2500
Entry Wire Line
	4050 2600 3950 2500
Entry Wire Line
	3700 2600 3600 2500
$Comp
L Device:R R?
U 1 1 5D859AFB
P 8950 3800
AR Path="/5D2C12A5/5D859AFB" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AFB" Ref="R?"  Part="1" 
F 0 "R?" H 9020 3846 50  0000 L CNN
F 1 "220Ω" H 9020 3755 50  0000 L CNN
F 2 "" V 8880 3800 50  0001 C CNN
F 3 "~" H 8950 3800 50  0001 C CNN
	1    8950 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AF5
P 8600 3800
AR Path="/5D2C12A5/5D859AF5" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AF5" Ref="R?"  Part="1" 
F 0 "R?" H 8670 3846 50  0000 L CNN
F 1 "220Ω" H 8670 3755 50  0000 L CNN
F 2 "" V 8530 3800 50  0001 C CNN
F 3 "~" H 8600 3800 50  0001 C CNN
	1    8600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AEF
P 8250 3800
AR Path="/5D2C12A5/5D859AEF" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AEF" Ref="R?"  Part="1" 
F 0 "R?" H 8320 3846 50  0000 L CNN
F 1 "220Ω" H 8320 3755 50  0000 L CNN
F 2 "" V 8180 3800 50  0001 C CNN
F 3 "~" H 8250 3800 50  0001 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AE9
P 7900 3800
AR Path="/5D2C12A5/5D859AE9" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AE9" Ref="R?"  Part="1" 
F 0 "R?" H 7970 3846 50  0000 L CNN
F 1 "220Ω" H 7970 3755 50  0000 L CNN
F 2 "" V 7830 3800 50  0001 C CNN
F 3 "~" H 7900 3800 50  0001 C CNN
	1    7900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AE3
P 7550 3800
AR Path="/5D2C12A5/5D859AE3" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AE3" Ref="R?"  Part="1" 
F 0 "R?" H 7620 3846 50  0000 L CNN
F 1 "220Ω" H 7620 3755 50  0000 L CNN
F 2 "" V 7480 3800 50  0001 C CNN
F 3 "~" H 7550 3800 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859ADD
P 7200 3800
AR Path="/5D2C12A5/5D859ADD" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859ADD" Ref="R?"  Part="1" 
F 0 "R?" H 7270 3846 50  0000 L CNN
F 1 "220Ω" H 7270 3755 50  0000 L CNN
F 2 "" V 7130 3800 50  0001 C CNN
F 3 "~" H 7200 3800 50  0001 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AD7
P 6850 3800
AR Path="/5D2C12A5/5D859AD7" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AD7" Ref="R?"  Part="1" 
F 0 "R?" H 6920 3846 50  0000 L CNN
F 1 "220Ω" H 6920 3755 50  0000 L CNN
F 2 "" V 6780 3800 50  0001 C CNN
F 3 "~" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859AD1
P 6500 3800
AR Path="/5D2C12A5/5D859AD1" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859AD1" Ref="R?"  Part="1" 
F 0 "R?" H 6570 3846 50  0000 L CNN
F 1 "220Ω" H 6570 3755 50  0000 L CNN
F 2 "" V 6430 3800 50  0001 C CNN
F 3 "~" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3500 8950 3650
Wire Wire Line
	8600 3650 8600 3500
Wire Wire Line
	8250 3500 8250 3650
Wire Wire Line
	7900 3650 7900 3500
Wire Wire Line
	7550 3500 7550 3650
Wire Wire Line
	7200 3650 7200 3500
Wire Wire Line
	6850 3500 6850 3650
Wire Wire Line
	6500 3500 6500 3650
Wire Wire Line
	8950 3950 8950 4050
Wire Wire Line
	8600 4050 8800 4050
Connection ~ 8600 4050
Wire Wire Line
	8600 3950 8600 4050
Wire Wire Line
	8250 4050 8600 4050
Connection ~ 8250 4050
Wire Wire Line
	8250 3950 8250 4050
Wire Wire Line
	7900 4050 8250 4050
Connection ~ 7900 4050
Wire Wire Line
	7900 3950 7900 4050
Wire Wire Line
	7550 4050 7900 4050
Connection ~ 7550 4050
Wire Wire Line
	7550 3950 7550 4050
Wire Wire Line
	7200 4050 7550 4050
Connection ~ 7200 4050
Wire Wire Line
	7200 3950 7200 4050
Wire Wire Line
	6850 4050 7200 4050
Connection ~ 6850 4050
Wire Wire Line
	6850 3950 6850 4050
Wire Wire Line
	6500 4050 6150 4050
Wire Wire Line
	6500 4050 6850 4050
Connection ~ 6500 4050
Wire Wire Line
	6500 3950 6500 4050
$Comp
L Device:LED D?
U 1 1 5D859AAE
P 6500 3350
AR Path="/5D2C07CD/5D859AAE" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859AAE" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859AAE" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859AAE" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859AAE" Ref="D?"  Part="1" 
F 0 "D?" V 6539 3233 50  0000 R CNN
F 1 "LED" V 6448 3233 50  0000 R CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "~" H 6500 3350 50  0001 C CNN
	1    6500 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859AA8
P 6850 3350
AR Path="/5D2C07CD/5D859AA8" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859AA8" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859AA8" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859AA8" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859AA8" Ref="D?"  Part="1" 
F 0 "D?" V 6889 3233 50  0000 R CNN
F 1 "LED" V 6798 3233 50  0000 R CNN
F 2 "" H 6850 3350 50  0001 C CNN
F 3 "~" H 6850 3350 50  0001 C CNN
	1    6850 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859AA2
P 7200 3350
AR Path="/5D2C07CD/5D859AA2" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859AA2" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859AA2" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859AA2" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859AA2" Ref="D?"  Part="1" 
F 0 "D?" V 7239 3233 50  0000 R CNN
F 1 "LED" V 7148 3233 50  0000 R CNN
F 2 "" H 7200 3350 50  0001 C CNN
F 3 "~" H 7200 3350 50  0001 C CNN
	1    7200 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A9C
P 7550 3350
AR Path="/5D2C07CD/5D859A9C" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A9C" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A9C" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A9C" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A9C" Ref="D?"  Part="1" 
F 0 "D?" V 7589 3233 50  0000 R CNN
F 1 "LED" V 7498 3233 50  0000 R CNN
F 2 "" H 7550 3350 50  0001 C CNN
F 3 "~" H 7550 3350 50  0001 C CNN
	1    7550 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A96
P 8950 3350
AR Path="/5D2C07CD/5D859A96" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A96" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A96" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A96" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A96" Ref="D?"  Part="1" 
F 0 "D?" V 8989 3233 50  0000 R CNN
F 1 "LED" V 8898 3233 50  0000 R CNN
F 2 "" H 8950 3350 50  0001 C CNN
F 3 "~" H 8950 3350 50  0001 C CNN
	1    8950 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A90
P 8600 3350
AR Path="/5D2C07CD/5D859A90" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A90" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A90" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A90" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A90" Ref="D?"  Part="1" 
F 0 "D?" V 8639 3233 50  0000 R CNN
F 1 "LED" V 8548 3233 50  0000 R CNN
F 2 "" H 8600 3350 50  0001 C CNN
F 3 "~" H 8600 3350 50  0001 C CNN
	1    8600 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A8A
P 8250 3350
AR Path="/5D2C07CD/5D859A8A" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A8A" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A8A" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A8A" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A8A" Ref="D?"  Part="1" 
F 0 "D?" V 8289 3233 50  0000 R CNN
F 1 "LED" V 8198 3233 50  0000 R CNN
F 2 "" H 8250 3350 50  0001 C CNN
F 3 "~" H 8250 3350 50  0001 C CNN
	1    8250 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A84
P 7900 3350
AR Path="/5D2C07CD/5D859A84" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A84" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A84" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A84" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A84" Ref="D?"  Part="1" 
F 0 "D?" V 7939 3233 50  0000 R CNN
F 1 "LED" V 7848 3233 50  0000 R CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "~" H 7900 3350 50  0001 C CNN
	1    7900 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A7E
P 6150 3800
AR Path="/5D2C12A5/5D859A7E" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A7E" Ref="R?"  Part="1" 
F 0 "R?" H 6220 3846 50  0000 L CNN
F 1 "220Ω" H 6220 3755 50  0000 L CNN
F 2 "" V 6080 3800 50  0001 C CNN
F 3 "~" H 6150 3800 50  0001 C CNN
	1    6150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A78
P 5800 3800
AR Path="/5D2C12A5/5D859A78" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A78" Ref="R?"  Part="1" 
F 0 "R?" H 5870 3846 50  0000 L CNN
F 1 "220Ω" H 5870 3755 50  0000 L CNN
F 2 "" V 5730 3800 50  0001 C CNN
F 3 "~" H 5800 3800 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A72
P 5450 3800
AR Path="/5D2C12A5/5D859A72" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A72" Ref="R?"  Part="1" 
F 0 "R?" H 5520 3846 50  0000 L CNN
F 1 "220Ω" H 5520 3755 50  0000 L CNN
F 2 "" V 5380 3800 50  0001 C CNN
F 3 "~" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A6C
P 5100 3800
AR Path="/5D2C12A5/5D859A6C" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A6C" Ref="R?"  Part="1" 
F 0 "R?" H 5170 3846 50  0000 L CNN
F 1 "220Ω" H 5170 3755 50  0000 L CNN
F 2 "" V 5030 3800 50  0001 C CNN
F 3 "~" H 5100 3800 50  0001 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A66
P 4750 3800
AR Path="/5D2C12A5/5D859A66" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A66" Ref="R?"  Part="1" 
F 0 "R?" H 4820 3846 50  0000 L CNN
F 1 "220Ω" H 4820 3755 50  0000 L CNN
F 2 "" V 4680 3800 50  0001 C CNN
F 3 "~" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A60
P 4400 3800
AR Path="/5D2C12A5/5D859A60" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A60" Ref="R?"  Part="1" 
F 0 "R?" H 4470 3846 50  0000 L CNN
F 1 "220Ω" H 4470 3755 50  0000 L CNN
F 2 "" V 4330 3800 50  0001 C CNN
F 3 "~" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A5A
P 4050 3800
AR Path="/5D2C12A5/5D859A5A" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A5A" Ref="R?"  Part="1" 
F 0 "R?" H 4120 3846 50  0000 L CNN
F 1 "220Ω" H 4120 3755 50  0000 L CNN
F 2 "" V 3980 3800 50  0001 C CNN
F 3 "~" H 4050 3800 50  0001 C CNN
	1    4050 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D859A54
P 3700 3800
AR Path="/5D2C12A5/5D859A54" Ref="R?"  Part="1" 
AR Path="/5D2C13FD/5D859A54" Ref="R?"  Part="1" 
F 0 "R?" H 3770 3846 50  0000 L CNN
F 1 "220Ω" H 3770 3755 50  0000 L CNN
F 2 "" V 3630 3800 50  0001 C CNN
F 3 "~" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3500 6150 3650
Wire Wire Line
	5800 3650 5800 3500
Wire Wire Line
	5450 3500 5450 3650
Wire Wire Line
	5100 3650 5100 3500
Wire Wire Line
	4750 3500 4750 3650
Wire Wire Line
	4400 3650 4400 3500
Wire Wire Line
	4050 3500 4050 3650
Wire Wire Line
	3700 3500 3700 3650
$Comp
L power:GND #PWR?
U 1 1 5D859A46
P 8800 4150
AR Path="/5D2C07CD/5D859A46" Ref="#PWR?"  Part="1" 
AR Path="/5D2C0CA7/5D859A46" Ref="#PWR?"  Part="1" 
AR Path="/5D7BD0EA/5D859A46" Ref="#PWR?"  Part="1" 
AR Path="/5D2C12A5/5D859A46" Ref="#PWR?"  Part="1" 
AR Path="/5D2C13FD/5D859A46" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 3900 50  0001 C CNN
F 1 "GND" H 8805 3977 50  0000 C CNN
F 2 "" H 8800 4150 50  0001 C CNN
F 3 "" H 8800 4150 50  0001 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3950 6150 4050
Connection ~ 6150 4050
Wire Wire Line
	5800 4050 6150 4050
Wire Wire Line
	5800 3950 5800 4050
Connection ~ 5800 4050
Wire Wire Line
	5450 4050 5800 4050
Wire Wire Line
	5450 3950 5450 4050
Connection ~ 5450 4050
Wire Wire Line
	5100 4050 5450 4050
Wire Wire Line
	5100 3950 5100 4050
Connection ~ 5100 4050
Wire Wire Line
	4750 4050 5100 4050
Wire Wire Line
	4750 3950 4750 4050
Connection ~ 4750 4050
Wire Wire Line
	4400 4050 4750 4050
Wire Wire Line
	4400 3950 4400 4050
Connection ~ 4400 4050
Wire Wire Line
	4050 4050 4400 4050
Wire Wire Line
	4050 3950 4050 4050
Connection ~ 4050 4050
Wire Wire Line
	3700 4050 4050 4050
Wire Wire Line
	3700 3950 3700 4050
$Comp
L Device:LED D?
U 1 1 5D859A2B
P 3700 3350
AR Path="/5D2C07CD/5D859A2B" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A2B" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A2B" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A2B" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A2B" Ref="D?"  Part="1" 
F 0 "D?" V 3739 3233 50  0000 R CNN
F 1 "LED" V 3648 3233 50  0000 R CNN
F 2 "" H 3700 3350 50  0001 C CNN
F 3 "~" H 3700 3350 50  0001 C CNN
	1    3700 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A25
P 4050 3350
AR Path="/5D2C07CD/5D859A25" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A25" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A25" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A25" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A25" Ref="D?"  Part="1" 
F 0 "D?" V 4089 3233 50  0000 R CNN
F 1 "LED" V 3998 3233 50  0000 R CNN
F 2 "" H 4050 3350 50  0001 C CNN
F 3 "~" H 4050 3350 50  0001 C CNN
	1    4050 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A1F
P 4400 3350
AR Path="/5D2C07CD/5D859A1F" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A1F" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A1F" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A1F" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A1F" Ref="D?"  Part="1" 
F 0 "D?" V 4439 3233 50  0000 R CNN
F 1 "LED" V 4348 3233 50  0000 R CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A19
P 4750 3350
AR Path="/5D2C07CD/5D859A19" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A19" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A19" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A19" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A19" Ref="D?"  Part="1" 
F 0 "D?" V 4789 3233 50  0000 R CNN
F 1 "LED" V 4698 3233 50  0000 R CNN
F 2 "" H 4750 3350 50  0001 C CNN
F 3 "~" H 4750 3350 50  0001 C CNN
	1    4750 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A13
P 6150 3350
AR Path="/5D2C07CD/5D859A13" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A13" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A13" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A13" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A13" Ref="D?"  Part="1" 
F 0 "D?" V 6189 3233 50  0000 R CNN
F 1 "LED" V 6098 3233 50  0000 R CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "~" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A0D
P 5800 3350
AR Path="/5D2C07CD/5D859A0D" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A0D" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A0D" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A0D" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A0D" Ref="D?"  Part="1" 
F 0 "D?" V 5839 3233 50  0000 R CNN
F 1 "LED" V 5748 3233 50  0000 R CNN
F 2 "" H 5800 3350 50  0001 C CNN
F 3 "~" H 5800 3350 50  0001 C CNN
	1    5800 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A07
P 5450 3350
AR Path="/5D2C07CD/5D859A07" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A07" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A07" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A07" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A07" Ref="D?"  Part="1" 
F 0 "D?" V 5489 3233 50  0000 R CNN
F 1 "LED" V 5398 3233 50  0000 R CNN
F 2 "" H 5450 3350 50  0001 C CNN
F 3 "~" H 5450 3350 50  0001 C CNN
	1    5450 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D859A01
P 5100 3350
AR Path="/5D2C07CD/5D859A01" Ref="D?"  Part="1" 
AR Path="/5D2C0CA7/5D859A01" Ref="D?"  Part="1" 
AR Path="/5D7BD0EA/5D859A01" Ref="D?"  Part="1" 
AR Path="/5D2C12A5/5D859A01" Ref="D?"  Part="1" 
AR Path="/5D2C13FD/5D859A01" Ref="D?"  Part="1" 
F 0 "D?" V 5139 3233 50  0000 R CNN
F 1 "LED" V 5048 3233 50  0000 R CNN
F 2 "" H 5100 3350 50  0001 C CNN
F 3 "~" H 5100 3350 50  0001 C CNN
	1    5100 3350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
