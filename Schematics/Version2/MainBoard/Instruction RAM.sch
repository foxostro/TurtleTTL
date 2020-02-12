EESchema Schematic File Version 4
LIBS:MainBoard-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 21
Title "Instruction RAM"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "from the data bus."
Comment4 "The Instruction RAM module allows a portion of Instruction Memory to be accessed"
$EndDescr
$Comp
L Device:C C?
U 1 1 5D8D004F
P 800 10600
AR Path="/5D2C07CD/5D8D004F" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D004F" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D004F" Ref="C30"  Part="1" 
F 0 "C30" H 915 10646 50  0000 L CNN
F 1 "100nF" H 915 10555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 838 10450 50  0001 C CNN
F 3 "~" H 800 10600 50  0001 C CNN
	1    800  10600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D0055
P 1300 10600
AR Path="/5D2C07CD/5D8D0055" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5D8D0055" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D0055" Ref="C31"  Part="1" 
F 0 "C31" H 1415 10646 50  0000 L CNN
F 1 "100nF" H 1415 10555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1338 10450 50  0001 C CNN
F 3 "~" H 1300 10600 50  0001 C CNN
	1    1300 10600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8D0067
P 1050 10800
AR Path="/5D2C07CD/5D8D0067" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8D0067" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D0067" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 1050 10550 50  0001 C CNN
F 1 "GND" H 1055 10627 50  0000 C CNN
F 2 "" H 1050 10800 50  0001 C CNN
F 3 "" H 1050 10800 50  0001 C CNN
	1    1050 10800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8D006D
P 1050 10400
AR Path="/5D2C07CD/5D8D006D" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5D8D006D" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5D8D006D" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 1050 10250 50  0001 C CNN
F 1 "VCC" H 1067 10573 50  0000 C CNN
F 2 "" H 1050 10400 50  0001 C CNN
F 3 "" H 1050 10400 50  0001 C CNN
	1    1050 10400
	1    0    0    -1  
$EndComp
Entry Wire Line
	8800 2700 8900 2800
Entry Wire Line
	8800 2800 8900 2900
Entry Wire Line
	8800 2900 8900 3000
Entry Wire Line
	8800 3000 8900 3100
Entry Wire Line
	8800 3100 8900 3200
Entry Wire Line
	8800 3200 8900 3300
Entry Wire Line
	8800 3300 8900 3400
Wire Wire Line
	8800 2700 8200 2700
Wire Wire Line
	8800 2800 8200 2800
Wire Wire Line
	8200 2900 8800 2900
Wire Wire Line
	8800 3000 8200 3000
Wire Wire Line
	8200 3100 8800 3100
Wire Wire Line
	8800 3200 8200 3200
Wire Wire Line
	8200 3300 8800 3300
Text Label 8600 2700 2    50   ~ 0
DataBus0
Text Label 8600 2800 2    50   ~ 0
DataBus1
Text Label 8600 2900 2    50   ~ 0
DataBus2
Text Label 8600 3000 2    50   ~ 0
DataBus3
Text Label 8600 3100 2    50   ~ 0
DataBus4
Text Label 8600 3200 2    50   ~ 0
DataBus5
Text Label 8600 3300 2    50   ~ 0
DataBus6
Text Label 8600 3400 2    50   ~ 0
DataBus7
Text GLabel 12300 7550 2    50   Output ~ 0
DataBus[0..7]
Entry Wire Line
	6200 2700 6100 2800
Entry Wire Line
	6200 2800 6100 2900
Entry Wire Line
	6200 2900 6100 3000
Entry Wire Line
	6200 3000 6100 3100
Entry Wire Line
	6200 3100 6100 3200
Entry Wire Line
	6200 3200 6100 3300
Entry Wire Line
	6200 3300 6100 3400
Entry Wire Line
	6200 3400 6100 3500
Text GLabel 3400 7550 0    50   Output ~ 0
InsBus[0..15]
Text Label 6400 2800 0    50   ~ 0
InsBus14
Text Label 6400 2900 0    50   ~ 0
InsBus13
Text Label 6400 3000 0    50   ~ 0
InsBus12
Text Label 6400 3100 0    50   ~ 0
InsBus11
Text Label 6400 3200 0    50   ~ 0
InsBus10
Text Label 6400 3300 0    50   ~ 0
InsBus9
Text Label 6400 3400 0    50   ~ 0
InsBus8
Text GLabel 3350 9150 0    50   Input ~ 0
PC_IF[0..15]
Text GLabel 12300 4600 2    50   Input ~ 0
~PO[0..7]
Wire Bus Line
	12300 4600 12200 4600
Entry Wire Line
	12150 2100 12050 2200
Text Label 12050 2200 2    50   ~ 0
~PO0
Text GLabel 12300 4800 2    50   Input ~ 0
~PI[0..7]
Wire Bus Line
	12300 4800 12250 4800
Entry Wire Line
	12150 2000 12050 2100
Text Label 12050 2100 2    50   ~ 0
~PI0
Entry Wire Line
	12150 6150 12050 6250
Text Label 12050 6250 2    50   ~ 0
~PO1
Wire Bus Line
	12250 2000 12150 2000
Wire Bus Line
	12200 6150 12150 6150
Wire Bus Line
	12200 2100 12150 2100
Connection ~ 12250 4800
Connection ~ 12200 4600
Wire Bus Line
	12200 4600 12200 6150
Wire Wire Line
	6800 3400 6200 3400
Wire Wire Line
	6800 3300 6200 3300
Wire Wire Line
	6800 3200 6200 3200
Wire Wire Line
	6800 3100 6200 3100
Wire Wire Line
	6800 3000 6200 3000
Wire Wire Line
	6800 2900 6200 2900
Wire Wire Line
	6800 2800 6200 2800
Wire Wire Line
	6800 2700 6200 2700
$Comp
L power:GND #PWR081
U 1 1 5DBCD74B
P 7500 5350
F 0 "#PWR081" H 7500 5100 50  0001 C CNN
F 1 "GND" H 7500 5200 50  0000 C CNN
F 2 "" H 7500 5350 50  0001 C CNN
F 3 "" H 7500 5350 50  0001 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:IDT7007L U2
U 1 1 5DDB01C8
P 7500 3400
F 0 "U2" H 7500 3450 50  0000 C CNN
F 1 "IDT7007L" H 7500 3350 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 7500 3450 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/464/IDT_7007_DST_20190905-1485576.pdf" H 7500 3450 50  0001 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
Entry Wire Line
	6200 5000 6100 5100
Entry Wire Line
	6200 4900 6100 5000
Entry Wire Line
	6200 4800 6100 4900
Entry Wire Line
	6200 4700 6100 4800
Entry Wire Line
	6200 4600 6100 4700
Entry Wire Line
	6200 4500 6100 4600
Entry Wire Line
	6200 4400 6100 4500
Entry Wire Line
	6200 4300 6100 4400
Entry Wire Line
	6200 4200 6100 4300
Entry Wire Line
	6200 4100 6100 4200
Entry Wire Line
	6200 4000 6100 4100
Entry Wire Line
	6200 3900 6100 4000
Entry Wire Line
	6200 3800 6100 3900
Entry Wire Line
	6200 3700 6100 3800
Entry Wire Line
	6200 3600 6100 3700
Text Label 8250 5000 0    50   ~ 0
AddressBus14
Text Label 8250 4900 0    50   ~ 0
AddressBus13
Text Label 8250 4800 0    50   ~ 0
AddressBus12
Text Label 8250 4700 0    50   ~ 0
AddressBus11
Wire Wire Line
	8800 4700 8200 4700
Entry Wire Line
	8800 4700 8900 4800
Text Label 8250 4600 0    50   ~ 0
AddressBus10
Wire Wire Line
	8800 4600 8200 4600
Entry Wire Line
	8800 4600 8900 4700
Text Label 8250 4500 0    50   ~ 0
AddressBus9
Wire Wire Line
	8800 4500 8200 4500
Entry Wire Line
	8800 4500 8900 4600
Text Label 8250 4400 0    50   ~ 0
AddressBus8
Wire Wire Line
	8800 4400 8200 4400
Entry Wire Line
	8800 4400 8900 4500
Text Label 8250 4300 0    50   ~ 0
AddressBus7
Wire Wire Line
	8800 4300 8200 4300
Entry Wire Line
	8800 4300 8900 4400
Wire Wire Line
	8800 4200 8200 4200
Entry Wire Line
	8800 4200 8900 4300
Wire Wire Line
	8800 4100 8200 4100
Entry Wire Line
	8800 4100 8900 4200
Wire Wire Line
	8800 4000 8200 4000
Entry Wire Line
	8800 4000 8900 4100
Wire Wire Line
	8800 3900 8200 3900
Entry Wire Line
	8800 3900 8900 4000
Wire Wire Line
	8800 3800 8200 3800
Entry Wire Line
	8800 3800 8900 3900
Wire Wire Line
	8800 3700 8200 3700
Entry Wire Line
	8800 3700 8900 3800
Wire Wire Line
	8800 3600 8200 3600
Entry Wire Line
	8800 3600 8900 3700
Wire Wire Line
	8800 4800 8200 4800
Entry Wire Line
	8800 4800 8900 4900
Wire Wire Line
	8800 4900 8200 4900
Entry Wire Line
	8800 4900 8900 5000
Wire Wire Line
	8800 5000 8200 5000
Entry Wire Line
	8800 5000 8900 5100
Wire Wire Line
	8800 3400 8200 3400
Entry Wire Line
	8800 3400 8900 3500
Entry Wire Line
	8800 6750 8900 6850
Entry Wire Line
	8800 6850 8900 6950
Entry Wire Line
	8800 6950 8900 7050
Entry Wire Line
	8800 7050 8900 7150
Entry Wire Line
	8800 7150 8900 7250
Entry Wire Line
	8800 7250 8900 7350
Entry Wire Line
	8800 7350 8900 7450
Wire Wire Line
	8800 6750 8200 6750
Wire Wire Line
	8800 6850 8200 6850
Wire Wire Line
	8200 6950 8800 6950
Wire Wire Line
	8800 7050 8200 7050
Wire Wire Line
	8200 7150 8800 7150
Wire Wire Line
	8800 7250 8200 7250
Wire Wire Line
	8200 7350 8800 7350
Text Label 8600 6750 2    50   ~ 0
DataBus0
Text Label 8600 6850 2    50   ~ 0
DataBus1
Text Label 8600 6950 2    50   ~ 0
DataBus2
Text Label 8600 7050 2    50   ~ 0
DataBus3
Text Label 8600 7150 2    50   ~ 0
DataBus4
Text Label 8600 7250 2    50   ~ 0
DataBus5
Text Label 8600 7350 2    50   ~ 0
DataBus6
Text Label 8600 7450 2    50   ~ 0
DataBus7
Entry Wire Line
	6200 6750 6100 6850
Entry Wire Line
	6200 6850 6100 6950
Entry Wire Line
	6200 6950 6100 7050
Entry Wire Line
	6200 7050 6100 7150
Entry Wire Line
	6200 7150 6100 7250
Entry Wire Line
	6200 7250 6100 7350
Entry Wire Line
	6200 7350 6100 7450
Entry Wire Line
	6200 7450 6100 7550
Text Label 6400 6750 0    50   ~ 0
InsBus7
Text Label 6400 6850 0    50   ~ 0
InsBus6
Text Label 6400 6950 0    50   ~ 0
InsBus5
Text Label 6400 7050 0    50   ~ 0
InsBus4
Text Label 6400 7150 0    50   ~ 0
InsBus3
Text Label 6400 7250 0    50   ~ 0
InsBus2
Text Label 6400 7350 0    50   ~ 0
InsBus1
Text Label 6400 7450 0    50   ~ 0
InsBus0
Wire Wire Line
	6800 7450 6200 7450
Wire Wire Line
	6800 7350 6200 7350
Wire Wire Line
	6800 7250 6200 7250
Wire Wire Line
	6800 7150 6200 7150
Wire Wire Line
	6800 7050 6200 7050
Wire Wire Line
	6800 6950 6200 6950
Wire Wire Line
	6800 6850 6200 6850
Wire Wire Line
	6800 6750 6200 6750
$Comp
L Memory_RAM:IDT7007L U3
U 1 1 5DF2221D
P 7500 7450
F 0 "U3" H 7500 7500 50  0000 C CNN
F 1 "IDT7007L" H 7500 7400 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 7500 7500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/464/IDT_7007_DST_20190905-1485576.pdf" H 7500 7500 50  0001 C CNN
	1    7500 7450
	1    0    0    -1  
$EndComp
Text Label 6750 9050 2    50   ~ 0
PC_IF14
Wire Wire Line
	6200 9050 6800 9050
Entry Wire Line
	6200 9050 6100 9150
Text Label 6750 8950 2    50   ~ 0
PC_IF13
Wire Wire Line
	6200 8950 6800 8950
Entry Wire Line
	6200 8950 6100 9050
Text Label 6750 8850 2    50   ~ 0
PC_IF12
Wire Wire Line
	6200 8850 6800 8850
Entry Wire Line
	6200 8850 6100 8950
Text Label 6750 8750 2    50   ~ 0
PC_IF11
Wire Wire Line
	6200 8750 6800 8750
Entry Wire Line
	6200 8750 6100 8850
Text Label 6750 8650 2    50   ~ 0
PC_IF10
Wire Wire Line
	6200 8650 6800 8650
Entry Wire Line
	6200 8650 6100 8750
Text Label 6750 8550 2    50   ~ 0
PC_IF9
Wire Wire Line
	6200 8550 6800 8550
Entry Wire Line
	6200 8550 6100 8650
Text Label 6750 8450 2    50   ~ 0
PC_IF8
Wire Wire Line
	6200 8450 6800 8450
Entry Wire Line
	6200 8450 6100 8550
Text Label 6750 8350 2    50   ~ 0
PC_IF7
Wire Wire Line
	6200 8350 6800 8350
Entry Wire Line
	6200 8350 6100 8450
Text Label 6750 8250 2    50   ~ 0
PC_IF6
Wire Wire Line
	6200 8250 6800 8250
Entry Wire Line
	6200 8250 6100 8350
Text Label 6750 8150 2    50   ~ 0
PC_IF5
Wire Wire Line
	6200 8150 6800 8150
Entry Wire Line
	6200 8150 6100 8250
Text Label 6750 8050 2    50   ~ 0
PC_IF4
Wire Wire Line
	6200 8050 6800 8050
Entry Wire Line
	6200 8050 6100 8150
Text Label 6750 7950 2    50   ~ 0
PC_IF3
Wire Wire Line
	6200 7950 6800 7950
Entry Wire Line
	6200 7950 6100 8050
Text Label 6750 7850 2    50   ~ 0
PC_IF2
Wire Wire Line
	6200 7850 6800 7850
Entry Wire Line
	6200 7850 6100 7950
Text Label 6750 7750 2    50   ~ 0
PC_IF1
Wire Wire Line
	6200 7750 6800 7750
Entry Wire Line
	6200 7750 6100 7850
Text Label 6750 7650 2    50   ~ 0
PC_IF0
Wire Wire Line
	6200 7650 6800 7650
Entry Wire Line
	6200 7650 6100 7750
Text Label 8250 9050 0    50   ~ 0
AddressBus14
Text Label 8250 8950 0    50   ~ 0
AddressBus13
Text Label 8250 8850 0    50   ~ 0
AddressBus12
Text Label 8250 8750 0    50   ~ 0
AddressBus11
Wire Wire Line
	8800 8750 8200 8750
Entry Wire Line
	8800 8750 8900 8850
Text Label 8250 8650 0    50   ~ 0
AddressBus10
Wire Wire Line
	8800 8650 8200 8650
Entry Wire Line
	8800 8650 8900 8750
Text Label 8250 8550 0    50   ~ 0
AddressBus9
Wire Wire Line
	8800 8550 8200 8550
Entry Wire Line
	8800 8550 8900 8650
Text Label 8250 8450 0    50   ~ 0
AddressBus8
Wire Wire Line
	8800 8450 8200 8450
Entry Wire Line
	8800 8450 8900 8550
Text Label 8250 8350 0    50   ~ 0
AddressBus7
Wire Wire Line
	8800 8350 8200 8350
Entry Wire Line
	8800 8350 8900 8450
Text Label 8250 8250 0    50   ~ 0
AddressBus6
Wire Wire Line
	8800 8250 8200 8250
Entry Wire Line
	8800 8250 8900 8350
Text Label 8250 8150 0    50   ~ 0
AddressBus5
Wire Wire Line
	8800 8150 8200 8150
Entry Wire Line
	8800 8150 8900 8250
Text Label 8250 8050 0    50   ~ 0
AddressBus4
Wire Wire Line
	8800 8050 8200 8050
Entry Wire Line
	8800 8050 8900 8150
Text Label 8250 7950 0    50   ~ 0
AddressBus3
Wire Wire Line
	8800 7950 8200 7950
Entry Wire Line
	8800 7950 8900 8050
Text Label 8250 7850 0    50   ~ 0
AddressBus2
Wire Wire Line
	8800 7850 8200 7850
Entry Wire Line
	8800 7850 8900 7950
Text Label 8250 7750 0    50   ~ 0
AddressBus1
Wire Wire Line
	8800 7750 8200 7750
Entry Wire Line
	8800 7750 8900 7850
Text Label 8250 7650 0    50   ~ 0
AddressBus0
Wire Wire Line
	8800 7650 8200 7650
Entry Wire Line
	8800 7650 8900 7750
Wire Wire Line
	8800 8850 8200 8850
Entry Wire Line
	8800 8850 8900 8950
Wire Wire Line
	8800 8950 8200 8950
Entry Wire Line
	8800 8950 8900 9050
Wire Wire Line
	8800 9050 8200 9050
Entry Wire Line
	8800 9050 8900 9150
Wire Wire Line
	8800 7450 8200 7450
Entry Wire Line
	8800 7450 8900 7550
Text Label 6400 2700 0    50   ~ 0
InsBus15
Wire Bus Line
	6100 7550 5550 7550
Wire Bus Line
	6100 3500 5550 3500
Wire Bus Line
	5550 3500 5550 7550
Connection ~ 5550 7550
Wire Bus Line
	5550 7550 3400 7550
Wire Bus Line
	3350 9150 4450 9150
Wire Bus Line
	8900 3500 9250 3500
Wire Bus Line
	9250 3500 9250 7550
Text GLabel 12350 9150 2    50   Input ~ 0
AddressBus[0..15]
Wire Bus Line
	8900 5100 9600 5100
Wire Bus Line
	9600 5100 9600 9150
Wire Wire Line
	8200 2200 12050 2200
Wire Wire Line
	8200 2100 12050 2100
Wire Bus Line
	12200 2100 12200 4600
Wire Bus Line
	12250 2000 12250 4800
Wire Bus Line
	12250 4800 12250 6050
Wire Bus Line
	12250 6050 12150 6050
Text Label 12050 6150 2    50   ~ 0
~PI1
Entry Wire Line
	12150 6050 12050 6150
Wire Wire Line
	8350 2000 8200 2000
Wire Wire Line
	6650 2000 6800 2000
Wire Wire Line
	6650 6050 6800 6050
Wire Wire Line
	8350 6050 8200 6050
Wire Wire Line
	6650 2100 6800 2100
Wire Wire Line
	6650 6150 6800 6150
Wire Wire Line
	7300 5200 7300 5350
NoConn ~ 6800 2400
NoConn ~ 6800 2500
NoConn ~ 8200 2400
NoConn ~ 8200 2500
NoConn ~ 6800 6450
NoConn ~ 6800 6550
NoConn ~ 8200 6450
NoConn ~ 8200 6550
Wire Wire Line
	6650 2300 6800 2300
Wire Wire Line
	8350 2300 8200 2300
Wire Wire Line
	8350 6350 8200 6350
Wire Wire Line
	6650 6350 6800 6350
Wire Bus Line
	5550 7550 5450 7550
Wire Bus Line
	8900 7550 9250 7550
Connection ~ 9250 7550
Wire Bus Line
	9250 7550 12300 7550
Wire Bus Line
	8900 9150 9600 9150
Connection ~ 9600 9150
Wire Bus Line
	9600 9150 12350 9150
Wire Wire Line
	8200 6150 12050 6150
Wire Wire Line
	8200 6250 12050 6250
Wire Wire Line
	1050 10400 1050 10450
Wire Wire Line
	800  10450 1050 10450
Wire Wire Line
	1050 10450 1300 10450
Connection ~ 1050 10450
Wire Wire Line
	1050 10750 1050 10800
Wire Wire Line
	1300 10750 1050 10750
Wire Wire Line
	1050 10750 800  10750
Connection ~ 1050 10750
Wire Wire Line
	7400 5200 7400 5250
Wire Wire Line
	7400 5250 7500 5250
Wire Wire Line
	7700 5250 7700 5200
Wire Wire Line
	7600 5200 7600 5250
Connection ~ 7600 5250
Wire Wire Line
	7600 5250 7700 5250
Wire Wire Line
	7500 5200 7500 5250
Connection ~ 7500 5250
Wire Wire Line
	7500 5250 7600 5250
Wire Wire Line
	7500 5250 7500 5350
Wire Wire Line
	7300 9250 7300 9400
Text Label 6750 5000 2    50   ~ 0
PC_IF14
Wire Wire Line
	6200 5000 6800 5000
Text Label 6750 4900 2    50   ~ 0
PC_IF13
Wire Wire Line
	6200 4900 6800 4900
Text Label 6750 4800 2    50   ~ 0
PC_IF12
Wire Wire Line
	6200 4800 6800 4800
Text Label 6750 4700 2    50   ~ 0
PC_IF11
Wire Wire Line
	6200 4700 6800 4700
Text Label 6750 4600 2    50   ~ 0
PC_IF10
Wire Wire Line
	6200 4600 6800 4600
Text Label 6750 4500 2    50   ~ 0
PC_IF9
Wire Wire Line
	6200 4500 6800 4500
Text Label 6750 4400 2    50   ~ 0
PC_IF8
Wire Wire Line
	6200 4400 6800 4400
Text Label 6750 4300 2    50   ~ 0
PC_IF7
Wire Wire Line
	6200 4300 6800 4300
Text Label 6750 4200 2    50   ~ 0
PC_IF6
Wire Wire Line
	6200 4200 6800 4200
Text Label 6750 4100 2    50   ~ 0
PC_IF5
Wire Wire Line
	6200 4100 6800 4100
Text Label 6750 4000 2    50   ~ 0
PC_IF4
Wire Wire Line
	6200 4000 6800 4000
Text Label 6750 3900 2    50   ~ 0
PC_IF3
Wire Wire Line
	6200 3900 6800 3900
Text Label 6750 3800 2    50   ~ 0
PC_IF2
Wire Wire Line
	6200 3800 6800 3800
Text Label 6750 3700 2    50   ~ 0
PC_IF1
Wire Wire Line
	6200 3700 6800 3700
Text Label 6750 3600 2    50   ~ 0
PC_IF0
Wire Wire Line
	6200 3600 6800 3600
Text Label 8250 4200 0    50   ~ 0
AddressBus6
Text Label 8250 4100 0    50   ~ 0
AddressBus5
Text Label 8250 4000 0    50   ~ 0
AddressBus4
Text Label 8250 3900 0    50   ~ 0
AddressBus3
Text Label 8250 3800 0    50   ~ 0
AddressBus2
Text Label 8250 3700 0    50   ~ 0
AddressBus1
Text Label 8250 3600 0    50   ~ 0
AddressBus0
$Comp
L 74xx:74LS04 U4
U 1 1 5DD7AA43
P 5350 8700
F 0 "U4" H 5350 9017 50  0000 C CNN
F 1 "74AHCT04" H 5350 8926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5350 8700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ahct04.pdf" H 5350 8700 50  0001 C CNN
	1    5350 8700
	1    0    0    -1  
$EndComp
Text Label 5000 8700 2    50   ~ 0
PC_IF15
Wire Wire Line
	4550 8700 5050 8700
Entry Wire Line
	4550 8700 4450 8800
Wire Bus Line
	4450 8800 4450 9150
Connection ~ 4450 9150
Wire Bus Line
	4450 9150 5750 9150
Wire Wire Line
	5650 6250 6800 6250
Wire Wire Line
	5650 6250 5650 8700
Wire Wire Line
	5650 6250 5650 2200
Wire Wire Line
	5650 2200 6800 2200
Connection ~ 5650 6250
Wire Bus Line
	5750 9150 5750 5100
Wire Bus Line
	5750 5100 6100 5100
Connection ~ 5750 9150
Wire Bus Line
	5750 9150 6100 9150
$Comp
L Device:C C?
U 1 1 5DE2B486
P 1850 10600
AR Path="/5D2C07CD/5DE2B486" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5DE2B486" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DE2B486" Ref="C3"  Part="1" 
F 0 "C3" H 1965 10646 50  0000 L CNN
F 1 "100nF" H 1965 10555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 10450 50  0001 C CNN
F 3 "~" H 1850 10600 50  0001 C CNN
	1    1850 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 10450 1850 10450
Connection ~ 1300 10450
Wire Wire Line
	1300 10750 1850 10750
Connection ~ 1300 10750
$Comp
L power:GND #PWR0102
U 1 1 5DE68BDD
P 6650 2000
F 0 "#PWR0102" H 6650 1750 50  0001 C CNN
F 1 "GND" V 6655 1872 50  0000 R CNN
F 2 "" H 6650 2000 50  0001 C CNN
F 3 "" H 6650 2000 50  0001 C CNN
	1    6650 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DE695A3
P 8350 2000
F 0 "#PWR0103" H 8350 1750 50  0001 C CNN
F 1 "GND" V 8355 1872 50  0000 R CNN
F 2 "" H 8350 2000 50  0001 C CNN
F 3 "" H 8350 2000 50  0001 C CNN
	1    8350 2000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DE69AE1
P 6650 6050
F 0 "#PWR0104" H 6650 5800 50  0001 C CNN
F 1 "GND" V 6655 5922 50  0000 R CNN
F 2 "" H 6650 6050 50  0001 C CNN
F 3 "" H 6650 6050 50  0001 C CNN
	1    6650 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DE6A13A
P 8350 6050
F 0 "#PWR0105" H 8350 5800 50  0001 C CNN
F 1 "GND" V 8355 5922 50  0000 R CNN
F 2 "" H 8350 6050 50  0001 C CNN
F 3 "" H 8350 6050 50  0001 C CNN
	1    8350 6050
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5DE6A6EC
P 7300 5350
F 0 "#PWR0107" H 7300 5200 50  0001 C CNN
F 1 "VCC" H 7300 5500 50  0000 C CNN
F 2 "" H 7300 5350 50  0001 C CNN
F 3 "" H 7300 5350 50  0001 C CNN
	1    7300 5350
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5DE6AF99
P 6650 6150
F 0 "#PWR0108" H 6650 6000 50  0001 C CNN
F 1 "VCC" V 6668 6277 50  0000 L CNN
F 2 "" H 6650 6150 50  0001 C CNN
F 3 "" H 6650 6150 50  0001 C CNN
	1    6650 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5DE6B547
P 6650 6350
F 0 "#PWR0115" H 6650 6200 50  0001 C CNN
F 1 "VCC" V 6668 6477 50  0000 L CNN
F 2 "" H 6650 6350 50  0001 C CNN
F 3 "" H 6650 6350 50  0001 C CNN
	1    6650 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0116
U 1 1 5DE6B7F9
P 8350 6350
F 0 "#PWR0116" H 8350 6200 50  0001 C CNN
F 1 "VCC" V 8368 6478 50  0000 L CNN
F 2 "" H 8350 6350 50  0001 C CNN
F 3 "" H 8350 6350 50  0001 C CNN
	1    8350 6350
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0119
U 1 1 5DE6BD87
P 6650 2100
F 0 "#PWR0119" H 6650 1950 50  0001 C CNN
F 1 "VCC" V 6668 2227 50  0000 L CNN
F 2 "" H 6650 2100 50  0001 C CNN
F 3 "" H 6650 2100 50  0001 C CNN
	1    6650 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0120
U 1 1 5DE6D15D
P 6650 2300
F 0 "#PWR0120" H 6650 2150 50  0001 C CNN
F 1 "VCC" V 6668 2427 50  0000 L CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6650 2300 50  0001 C CNN
	1    6650 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0121
U 1 1 5DE6D305
P 8350 2300
F 0 "#PWR0121" H 8350 2150 50  0001 C CNN
F 1 "VCC" V 8368 2428 50  0000 L CNN
F 2 "" H 8350 2300 50  0001 C CNN
F 3 "" H 8350 2300 50  0001 C CNN
	1    8350 2300
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 5DE6DA81
P 7300 9400
F 0 "#PWR0122" H 7300 9250 50  0001 C CNN
F 1 "VCC" H 7300 9550 50  0000 C CNN
F 2 "" H 7300 9400 50  0001 C CNN
F 3 "" H 7300 9400 50  0001 C CNN
	1    7300 9400
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS04 U4
U 7 1 5DE73977
P 7400 13700
F 0 "U4" H 7050 13900 50  0000 C CNN
F 1 "74AHCT04" H 7050 13800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 13700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ahct04.pdf" H 7400 13700 50  0001 C CNN
	7    7400 13700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 5DE85E1A
P 7400 13100
F 0 "#PWR0123" H 7400 12950 50  0001 C CNN
F 1 "VCC" H 7400 13250 50  0000 C CNN
F 2 "" H 7400 13100 50  0001 C CNN
F 3 "" H 7400 13100 50  0001 C CNN
	1    7400 13100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5DE921A1
P 7400 14250
F 0 "#PWR0124" H 7400 14000 50  0001 C CNN
F 1 "GND" H 7405 14077 50  0000 C CNN
F 2 "" H 7400 14250 50  0001 C CNN
F 3 "" H 7400 14250 50  0001 C CNN
	1    7400 14250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 14200 7400 14250
Wire Wire Line
	7700 9250 7700 9350
Wire Wire Line
	7600 9250 7600 9350
Wire Wire Line
	7600 9350 7700 9350
Connection ~ 7700 9350
Wire Wire Line
	7500 9250 7500 9350
Wire Wire Line
	7500 9350 7600 9350
Connection ~ 7600 9350
Wire Wire Line
	7400 9250 7400 9350
Wire Wire Line
	7400 9350 7500 9350
Connection ~ 7500 9350
Wire Wire Line
	7700 9350 7700 9400
$Comp
L power:GND #PWR0117
U 1 1 5E1DC33B
P 7700 9400
F 0 "#PWR0117" H 7700 9150 50  0001 C CNN
F 1 "GND" H 7705 9227 50  0000 C CNN
F 2 "" H 7700 9400 50  0001 C CNN
F 3 "" H 7700 9400 50  0001 C CNN
	1    7700 9400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0118
U 1 1 5E2092FD
P 7400 5750
F 0 "#PWR0118" H 7400 5600 50  0001 C CNN
F 1 "VCC" H 7417 5923 50  0000 C CNN
F 2 "" H 7400 5750 50  0001 C CNN
F 3 "" H 7400 5750 50  0001 C CNN
	1    7400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5750 7400 5800
Wire Wire Line
	7400 5800 7500 5800
Wire Wire Line
	7500 5800 7500 5850
Connection ~ 7400 5800
Wire Wire Line
	7400 5800 7400 5850
Wire Wire Line
	7500 5800 7600 5800
Wire Wire Line
	7600 5800 7600 5850
Connection ~ 7500 5800
$Comp
L power:VCC #PWR0245
U 1 1 5E23A0A9
P 7400 1700
F 0 "#PWR0245" H 7400 1550 50  0001 C CNN
F 1 "VCC" H 7417 1873 50  0000 C CNN
F 2 "" H 7400 1700 50  0001 C CNN
F 3 "" H 7400 1700 50  0001 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1700 7400 1750
Wire Wire Line
	7400 1750 7500 1750
Wire Wire Line
	7500 1750 7500 1800
Connection ~ 7400 1750
Wire Wire Line
	7400 1750 7400 1800
Wire Wire Line
	7500 1750 7600 1750
Wire Wire Line
	7600 1750 7600 1800
Connection ~ 7500 1750
Wire Wire Line
	7400 13100 7400 13200
Wire Bus Line
	8900 2800 8900 3500
Wire Bus Line
	6100 2800 6100 3500
Wire Bus Line
	8900 6850 8900 7550
Wire Bus Line
	6100 6850 6100 7550
Wire Bus Line
	6100 3700 6100 5100
Wire Bus Line
	8900 3700 8900 5100
Wire Bus Line
	6100 7750 6100 9150
Wire Bus Line
	8900 7750 8900 9150
$EndSCHEMATC