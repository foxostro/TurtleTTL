EESchema Schematic File Version 4
LIBS:TurtleTTL-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 24
Title "Instruction RAM Control Logic"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Logic for the control signals which drive Instruction RAM."
$EndDescr
Text GLabel 2750 2050 0    50   Input ~ 0
~MI
Text GLabel 2550 4550 0    50   Input ~ 0
~MO
$Comp
L 74xx:74LS04 U?
U 1 1 5DA7F270
P 3200 4350
AR Path="/5D8005AF/5D800744/5DA7F270" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DA7F270" Ref="U36"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DA7F270" Ref="U41"  Part="1" 
F 0 "U41" H 3200 4667 50  0000 C CNN
F 1 "74LS04" H 3200 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 4350 50  0001 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5DA7F276
P 3950 4450
AR Path="/5D8005AF/5D800744/5DA7F276" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DA7F276" Ref="U38"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DA7F276" Ref="U43"  Part="1" 
F 0 "U43" H 3950 4775 50  0000 C CNN
F 1 "74LS08" H 3950 4684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3950 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3950 4450 50  0001 C CNN
	1    3950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4350 3500 4350
$Comp
L 74xx:74LS08 U?
U 1 1 5DA7F27D
P 7700 2850
AR Path="/5D8005AF/5D800744/5DA7F27D" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DA7F27D" Ref="U39"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DA7F27D" Ref="U44"  Part="1" 
F 0 "U44" H 7700 3175 50  0000 C CNN
F 1 "74LS08" H 7700 3084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7700 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 5DA7F283
P 3350 2150
AR Path="/5D2C0C74/5DA7F283" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5DA7F283" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA7F283" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DA7F283" Ref="U37"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DA7F283" Ref="U42"  Part="1" 
F 0 "U42" H 3350 2475 50  0000 C CNN
F 1 "74LS32" H 3350 2384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3350 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3350 2150 50  0001 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
Text HLabel 4500 4450 2    50   Output ~ 0
~OE
Text HLabel 3950 2150 2    50   Output ~ 0
~WE
Text HLabel 9200 2950 2    50   Output ~ 0
~OutToBus
Wire Wire Line
	2750 2050 3050 2050
Text HLabel 2750 2250 0    50   Input ~ 0
Select
Wire Wire Line
	2750 2250 3050 2250
Wire Wire Line
	3950 2150 3650 2150
Text Notes 2600 2700 0    50   ~ 0
Only write to the Instruction SRAM when\nthe MI signal is active and the appropriate\nplane of Instruction RAM is selected.
Text HLabel 2550 4350 0    50   Input ~ 0
Select
Wire Wire Line
	2550 4350 2900 4350
Wire Wire Line
	3650 4550 2550 4550
Text Notes 2500 5150 0    50   ~ 0
Always output from Instruction SRAM when\nthe plane of Instruction RAM is deselected.\nThis allows RAM to be read for use in IF.\n\nElse, if the plane is selected then only read\nfrom SRAM when the MO signal is active.
Wire Wire Line
	4500 4450 4250 4450
Text GLabel 7050 2750 0    50   Input ~ 0
~MI
Text GLabel 7050 2950 0    50   Input ~ 0
~MO
Wire Wire Line
	7050 2750 7400 2750
Wire Wire Line
	7050 2950 7400 2950
$Comp
L 74xx:74LS32 U?
U 1 1 5DBDE3AD
P 8600 2950
AR Path="/5D2C0C74/5DBDE3AD" Ref="U?"  Part="1" 
AR Path="/5D2C1188/5DBDE3AD" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBDE3AD" Ref="U?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBDE3AD" Ref="U40"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBDE3AD" Ref="U45"  Part="1" 
F 0 "U45" H 8600 3275 50  0000 C CNN
F 1 "74LS32" H 8600 3184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8600 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8600 2950 50  0001 C CNN
	1    8600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2850 8300 2850
Text HLabel 7050 3150 0    50   Input ~ 0
Select
Wire Wire Line
	9200 2950 8900 2950
Wire Wire Line
	8300 3050 7950 3050
Wire Wire Line
	7950 3050 7950 3150
Wire Wire Line
	7950 3150 7050 3150
Text Notes 7150 3950 0    50   ~ 0
The bus transceiver should connect the\nInstruction SRAM to the Data Bus when\nthe plane is selected and wither MO or MI\nis active.\n\nThe direction of the bus transceiver must\nalso be set appropriately. This is done\nelsewhere.
$Comp
L Device:C C?
U 1 1 5DBF6C0C
P 850 7250
AR Path="/5D2C07CD/5DBF6C0C" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5DBF6C0C" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBF6C0C" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBF6C0C" Ref="C33"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBF6C0C" Ref="C36"  Part="1" 
F 0 "C36" H 965 7296 50  0000 L CNN
F 1 "100nF" H 965 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 888 7100 50  0001 C CNN
F 3 "~" H 850 7250 50  0001 C CNN
	1    850  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DBF6C12
P 1350 7250
AR Path="/5D2C07CD/5DBF6C12" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5DBF6C12" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBF6C12" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBF6C12" Ref="C34"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBF6C12" Ref="C37"  Part="1" 
F 0 "C37" H 1465 7296 50  0000 L CNN
F 1 "100nF" H 1465 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1388 7100 50  0001 C CNN
F 3 "~" H 1350 7250 50  0001 C CNN
	1    1350 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DBF6C18
P 1850 7250
AR Path="/5D2C07CD/5DBF6C18" Ref="C?"  Part="1" 
AR Path="/5D2C1188/5DBF6C18" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBF6C18" Ref="C?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBF6C18" Ref="C35"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBF6C18" Ref="C38"  Part="1" 
F 0 "C38" H 1965 7296 50  0000 L CNN
F 1 "100nF" H 1965 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1888 7100 50  0001 C CNN
F 3 "~" H 1850 7250 50  0001 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBF6C24
P 850 7400
AR Path="/5D2C07CD/5DBF6C24" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5DBF6C24" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBF6C24" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBF6C24" Ref="#PWR0188"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBF6C24" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 850 7150 50  0001 C CNN
F 1 "GND" H 855 7227 50  0000 C CNN
F 2 "" H 850 7400 50  0001 C CNN
F 3 "" H 850 7400 50  0001 C CNN
	1    850  7400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DBF6C2A
P 850 7100
AR Path="/5D2C07CD/5DBF6C2A" Ref="#PWR?"  Part="1" 
AR Path="/5D2C1188/5DBF6C2A" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DBF6C2A" Ref="#PWR?"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA74300/5DBF6C2A" Ref="#PWR0189"  Part="1" 
AR Path="/5D8005AF/5D800744/5DA75946/5DBF6C2A" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 850 6950 50  0001 C CNN
F 1 "VCC" H 867 7273 50  0000 C CNN
F 2 "" H 850 7100 50  0001 C CNN
F 3 "" H 850 7100 50  0001 C CNN
	1    850  7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7100 1350 7100
Connection ~ 850  7100
Wire Wire Line
	1350 7100 1850 7100
Connection ~ 1350 7100
Wire Wire Line
	1850 7400 1350 7400
Wire Wire Line
	1350 7400 850  7400
Connection ~ 1350 7400
Connection ~ 850  7400
$EndSCHEMATC
