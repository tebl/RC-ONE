EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:modules
LIBS:rc1_backplane
LIBS:mos_6581
LIBS:trs_3.5mm
LIBS:RC1 Sound Interface-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L RC1_Backplane J1
U 1 1 5D7FC445
P 14950 7175
F 0 "J1" H 14950 9175 50  0000 C CNN
F 1 "Expansion" V 15400 7125 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x39_Pitch2.54mm" H 14950 7175 50  0001 C CNN
F 3 "" H 14950 7175 50  0001 C CNN
	1    14950 7175
	1    0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5D7FC446
P 14100 7550
F 0 "#PWR01" H 14100 7300 50  0001 C CNN
F 1 "GND" H 14100 7400 50  0000 C CNN
F 2 "" H 14100 7550 50  0001 C CNN
F 3 "" H 14100 7550 50  0001 C CNN
	1    14100 7550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5D7FC447
P 14100 7300
F 0 "#PWR02" H 14100 7150 50  0001 C CNN
F 1 "VCC" H 14100 7450 50  0000 C CNN
F 2 "" H 14100 7300 50  0001 C CNN
F 3 "" H 14100 7300 50  0001 C CNN
	1    14100 7300
	1    0    0    -1  
$EndComp
Entry Wire Line
	14250 9175 14350 9075
Entry Wire Line
	14250 9075 14350 8975
Entry Wire Line
	14250 8975 14350 8875
Entry Wire Line
	14250 8875 14350 8775
Entry Wire Line
	14250 8775 14350 8675
Entry Wire Line
	14250 8675 14350 8575
Text Label 14725 8575 2    60   ~ 0
A10
Text Label 14725 8675 2    60   ~ 0
A11
Text Label 14725 8775 2    60   ~ 0
A12
Text Label 14725 8875 2    60   ~ 0
A13
Text Label 14725 8975 2    60   ~ 0
A14
Text Label 14725 9075 2    60   ~ 0
A15
$Comp
L C C1
U 1 1 5D7FC44B
P 10275 10550
F 0 "C1" H 10300 10650 50  0000 L CNN
F 1 "100nF" H 10300 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10313 10400 50  0001 C CNN
F 3 "" H 10275 10550 50  0001 C CNN
	1    10275 10550
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5D7FC44D
P 10275 10250
F 0 "#PWR03" H 10275 10100 50  0001 C CNN
F 1 "VCC" H 10275 10400 50  0000 C CNN
F 2 "" H 10275 10250 50  0001 C CNN
F 3 "" H 10275 10250 50  0001 C CNN
	1    10275 10250
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5D7FC44E
P 10550 10550
F 0 "C3" H 10575 10650 50  0000 L CNN
F 1 "100nF" H 10575 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10588 10400 50  0001 C CNN
F 3 "" H 10550 10550 50  0001 C CNN
	1    10550 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5D7FC44F
P 10825 10550
F 0 "C5" H 10850 10650 50  0000 L CNN
F 1 "100nF" H 10850 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10863 10400 50  0001 C CNN
F 3 "" H 10825 10550 50  0001 C CNN
	1    10825 10550
	-1   0    0    -1  
$EndComp
Text Notes 12175 10925 0    60   ~ 0
RC-ONE 8K ExRAM
NoConn ~ 14750 5275
NoConn ~ 14750 7075
NoConn ~ 14750 6875
NoConn ~ 14750 6675
NoConn ~ 14750 6575
$Comp
L 74LS138 U5
U 1 1 5D7FC450
P 1925 2650
F 0 "U5" H 1925 2650 50  0000 C CNN
F 1 "74LS138" H 1925 2150 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 1925 2650 50  0001 C CNN
F 3 "" H 1925 2650 50  0001 C CNN
	1    1925 2650
	1    0    0    -1  
$EndComp
Text Label 950  2500 0    60   ~ 0
A15
Text Label 950  2300 0    60   ~ 0
A13
Text Label 950  2400 0    60   ~ 0
A14
$Comp
L GND #PWR04
U 1 1 5D7FC452
P 1250 3075
F 0 "#PWR04" H 1250 2825 50  0001 C CNN
F 1 "GND" H 1250 2925 50  0000 C CNN
F 2 "" H 1250 3075 50  0001 C CNN
F 3 "" H 1250 3075 50  0001 C CNN
	1    1250 3075
	1    0    0    -1  
$EndComp
Text Label 2550 2400 0    60   ~ 0
8K1
Text Label 2550 2500 0    60   ~ 0
8K2
Text Label 2550 2600 0    60   ~ 0
8K3
Entry Wire Line
	825  2200 925  2300
Entry Wire Line
	825  2300 925  2400
Entry Wire Line
	825  2400 925  2500
Text Notes 2800 2400 0    60   ~ 0
$2000
Text Notes 2800 2500 0    60   ~ 0
$4000
Text Notes 2800 2600 0    60   ~ 0
$6000
Text Notes 2800 2700 0    60   ~ 0
$8000
Text Notes 2800 2800 0    60   ~ 0
$A000
Text Notes 2800 2900 0    60   ~ 0
$C000
$Comp
L C C6
U 1 1 5D7FC460
P 11100 10550
F 0 "C6" H 11125 10650 50  0000 L CNN
F 1 "100nF" H 11125 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11138 10400 50  0001 C CNN
F 3 "" H 11100 10550 50  0001 C CNN
	1    11100 10550
	-1   0    0    -1  
$EndComp
Text Label 14725 7575 2    60   ~ 0
A0
Text Label 14725 7675 2    60   ~ 0
A1
Text Label 14725 7775 2    60   ~ 0
A2
Text Label 14725 7875 2    60   ~ 0
A3
Text Label 14725 7975 2    60   ~ 0
A4
Text Label 14725 6475 2    60   ~ 0
D0
Text Label 14725 6375 2    60   ~ 0
D1
Text Label 14725 6275 2    60   ~ 0
D2
Text Label 14725 6175 2    60   ~ 0
D3
Text Label 14725 6075 2    60   ~ 0
D4
Text Label 14725 5975 2    60   ~ 0
D5
Text Label 14725 5875 2    60   ~ 0
D6
Text Label 14725 5775 2    60   ~ 0
D7
Text Label 14725 6775 2    60   ~ 0
R/~W
Text Label 14725 7275 2    60   ~ 0
PHI2
Entry Wire Line
	14250 8075 14350 7975
Entry Wire Line
	14250 7975 14350 7875
Entry Wire Line
	14250 7875 14350 7775
Entry Wire Line
	14250 7775 14350 7675
Entry Wire Line
	14250 7675 14350 7575
Entry Wire Line
	14250 6475 14350 6375
Entry Wire Line
	14250 6375 14350 6275
Entry Wire Line
	14250 6275 14350 6175
Entry Wire Line
	14250 6175 14350 6075
Entry Wire Line
	14250 6075 14350 5975
Entry Wire Line
	14250 5975 14350 5875
Entry Wire Line
	14250 5875 14350 5775
Entry Wire Line
	14250 6575 14350 6475
Entry Wire Line
	14250 6875 14350 6775
Entry Wire Line
	14250 7075 14350 7175
Text Label 2550 2700 0    60   ~ 0
8K4
Text Label 2550 2800 0    60   ~ 0
8K5
Text Label 2550 2900 0    60   ~ 0
8K6
NoConn ~ 14750 5675
NoConn ~ 14750 5375
NoConn ~ 14750 6975
NoConn ~ 2525 2300
$Comp
L Conn_02x06_Odd_Even J2
U 1 1 5D80326C
P 3425 2600
F 0 "J2" H 3475 2900 50  0000 C CNN
F 1 "ADDRESS" H 3475 2175 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 3425 2600 50  0001 C CNN
F 3 "" H 3425 2600 50  0001 C CNN
	1    3425 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	825  2700 925  2800
Wire Wire Line
	14350 9075 14750 9075
Wire Wire Line
	14350 8975 14750 8975
Wire Wire Line
	14350 8875 14750 8875
Wire Wire Line
	14350 8775 14750 8775
Wire Wire Line
	14350 8675 14750 8675
Wire Wire Line
	14350 8575 14750 8575
Wire Bus Line
	14250 5875 14250 7175
Wire Bus Line
	14250 7675 14250 9175
Wire Wire Line
	10275 10775 10275 10700
Wire Wire Line
	10275 10250 10275 10400
Wire Wire Line
	925  2500 1325 2500
Wire Wire Line
	925  2300 1325 2300
Wire Wire Line
	925  2400 1325 2400
Wire Wire Line
	925  2800 1325 2800
Wire Wire Line
	1325 2900 1250 2900
Wire Wire Line
	1250 2900 1250 3075
Wire Wire Line
	1250 3000 1325 3000
Connection ~ 1250 3000
Wire Wire Line
	2525 2400 3225 2400
Wire Wire Line
	2525 2500 3225 2500
Wire Wire Line
	2525 2600 3225 2600
Wire Bus Line
	825  2200 825  2700
Wire Wire Line
	10275 10775 11375 10775
Wire Wire Line
	14350 7975 14750 7975
Wire Wire Line
	14350 7875 14750 7875
Wire Wire Line
	14350 7775 14750 7775
Wire Wire Line
	14350 7675 14750 7675
Wire Wire Line
	14350 7575 14750 7575
Wire Wire Line
	14350 6375 14750 6375
Wire Wire Line
	14350 6275 14750 6275
Wire Wire Line
	14350 6175 14750 6175
Wire Wire Line
	14350 6075 14750 6075
Wire Wire Line
	14350 5975 14750 5975
Wire Wire Line
	14350 5875 14750 5875
Wire Wire Line
	14350 5775 14750 5775
Wire Wire Line
	14350 6475 14750 6475
Wire Wire Line
	14350 6775 14750 6775
Wire Wire Line
	14350 7275 14750 7275
Wire Wire Line
	14100 7475 14100 7550
Wire Wire Line
	2525 2900 3225 2900
Wire Wire Line
	3225 2800 2525 2800
Wire Wire Line
	2525 2700 3225 2700
Wire Wire Line
	3800 2400 3800 2900
Wire Wire Line
	3725 2600 3800 2600
Connection ~ 3800 2600
Wire Wire Line
	3725 2700 3800 2700
Connection ~ 3800 2700
Wire Wire Line
	3725 2800 3800 2800
Connection ~ 3800 2800
Wire Wire Line
	3725 2500 4700 2500
Wire Wire Line
	10550 10400 10550 10325
Wire Wire Line
	10275 10325 11375 10325
Connection ~ 10275 10325
Connection ~ 10550 10325
Wire Wire Line
	11375 10650 11375 10850
Connection ~ 11375 10775
Wire Wire Line
	11100 10700 11100 10775
Connection ~ 11100 10775
Wire Wire Line
	10825 10700 10825 10775
Connection ~ 10825 10775
Wire Wire Line
	10550 10700 10550 10775
Connection ~ 10550 10775
Wire Wire Line
	10825 10400 10825 10325
Connection ~ 10825 10325
Wire Wire Line
	11100 10400 11100 10325
Connection ~ 11100 10325
Wire Wire Line
	11375 10325 11375 10450
Entry Wire Line
	14250 8575 14350 8475
Wire Wire Line
	14350 8475 14750 8475
Text Label 14725 8475 2    60   ~ 0
A9
Text Label 14725 7175 2    60   ~ 0
RESET
Entry Wire Line
	14250 7175 14350 7275
Wire Wire Line
	14350 7175 14750 7175
Text Notes 11825 10450 0    60   ~ 0
Given that the KIM-1 was developed by MOS technologies, in other words the forefather of\nthe C64 via the PET line of computers, I thought it fitting that a SID chip or two be\nadded to the system. The designs requires the use of modern replacements like the\nSwinSID, ARMSid etc. Also, the few original chips that still remain belong in those\ncomputers anyway.
NoConn ~ 14750 5575
NoConn ~ 14750 5475
Wire Wire Line
	14750 7375 14100 7375
Wire Wire Line
	14100 7375 14100 7300
Wire Wire Line
	14750 7475 14100 7475
$Comp
L 74LS138 U6
U 1 1 5D892A94
P 5300 2250
F 0 "U6" H 5300 2250 50  0000 C CNN
F 1 "74LS138" H 5300 1750 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
Text Label 950  2800 0    60   ~ 0
A12
Text Label 4325 2000 0    60   ~ 0
A10
Wire Wire Line
	4300 2100 4700 2100
Entry Wire Line
	4200 2000 4300 2100
Wire Wire Line
	4300 2000 4700 2000
Entry Wire Line
	4200 1900 4300 2000
Wire Wire Line
	4300 1900 4700 1900
Entry Wire Line
	4200 1800 4300 1900
Wire Bus Line
	4200 1800 4200 2000
Text Label 4325 1900 0    60   ~ 0
A9
Wire Wire Line
	3725 2400 3800 2400
Connection ~ 3800 2500
Wire Wire Line
	3800 2900 3725 2900
Text Notes 5975 1900 0    60   ~ 0
$x000
Text Label 4325 2100 0    60   ~ 0
A11
Text Notes 5975 2600 0    60   ~ 0
$xE00
Wire Bus Line
	825  2450 750  2450
Wire Bus Line
	750  1275 750  9400
Wire Bus Line
	750  1275 13950 1275
Wire Bus Line
	4100 1275 4100 1900
NoConn ~ 2525 3000
NoConn ~ 5900 1900
NoConn ~ 5900 2000
NoConn ~ 5900 2300
NoConn ~ 5900 2200
Wire Wire Line
	5900 2100 6400 2100
Wire Wire Line
	5900 2600 6400 2600
Text GLabel 6400 2100 2    60   Output ~ 0
~SID1
Text GLabel 6400 2600 2    60   Output ~ 0
~SID2
$Comp
L SID U1
U 1 1 5D89E03F
P 2650 5675
F 0 "U1" H 2275 6200 60  0000 C CNN
F 1 "SID #1" H 2650 5375 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2075 5875 60  0001 C CNN
F 3 "" H 2075 5875 60  0000 C CNN
	1    2650 5675
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5D89E1DA
P 1600 5225
F 0 "C7" V 1475 5150 50  0000 L CNN
F 1 "470pF" V 1725 5125 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1638 5075 50  0001 C CNN
F 3 "" H 1600 5225 50  0001 C CNN
	1    1600 5225
	0    1    -1   0   
$EndComp
Wire Wire Line
	1850 5375 1925 5375
Wire Wire Line
	1850 5225 1850 5375
Wire Wire Line
	1400 5475 1925 5475
Wire Wire Line
	1400 5225 1400 5475
$Comp
L C C9
U 1 1 5D89E970
P 1100 5225
F 0 "C9" V 975 5150 50  0000 L CNN
F 1 "470pF" V 1225 5125 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1138 5075 50  0001 C CNN
F 3 "" H 1100 5225 50  0001 C CNN
	1    1100 5225
	0    1    -1   0   
$EndComp
Wire Wire Line
	1250 5225 1325 5225
Wire Wire Line
	1325 5225 1325 5575
Wire Wire Line
	1325 5575 1925 5575
Wire Wire Line
	1925 5675 875  5675
Wire Wire Line
	875  5675 875  5225
Wire Wire Line
	875  5225 950  5225
Wire Wire Line
	1850 5225 1750 5225
Wire Wire Line
	1400 5225 1450 5225
Text Label 1525 5775 0    60   ~ 0
RESET
Text Label 1525 5875 0    60   ~ 0
PHI2
Text Label 1525 5975 0    60   ~ 0
R/~W
Text GLabel 1925 6075 0    60   Input ~ 0
~SID1
Text Label 1525 6175 0    60   ~ 0
A0
Text Label 1525 6275 0    60   ~ 0
A1
Text Label 1525 6375 0    60   ~ 0
A2
Text Label 1525 6475 0    60   ~ 0
A3
Text Label 1525 6575 0    60   ~ 0
A4
Entry Wire Line
	1400 6675 1500 6575
Entry Wire Line
	1400 6575 1500 6475
Entry Wire Line
	1400 6475 1500 6375
Entry Wire Line
	1400 6375 1500 6275
Entry Wire Line
	1400 6275 1500 6175
Wire Wire Line
	1500 6575 1925 6575
Wire Wire Line
	1500 6475 1925 6475
Wire Wire Line
	1500 6375 1925 6375
Wire Wire Line
	1500 6275 1925 6275
Wire Wire Line
	1500 6175 1925 6175
Entry Wire Line
	1400 6075 1500 5975
Entry Wire Line
	1400 5975 1500 5875
Entry Wire Line
	1400 5875 1500 5775
Wire Wire Line
	1500 5975 1925 5975
Wire Wire Line
	1500 5875 1925 5875
Wire Wire Line
	1500 5775 1925 5775
Text Notes 7275 2100 0    60   ~ 0
1101
Text Notes 7550 2100 0    60   ~ 0
0100 
Text Notes 7275 2000 0    60   ~ 0
D
Text Notes 7550 2000 0    60   ~ 0
4
Text Notes 7825 2200 0    60   ~ 0
0010 
Text Notes 7825 2100 0    60   ~ 0
0000 
Text Notes 7550 2300 0    60   ~ 0
0101
Text Notes 7825 2300 0    60   ~ 0
0000 
Text Notes 7825 2000 0    60   ~ 0
0
Text Notes 6925 2200 0    60   ~ 0
D420
Text Notes 6925 2100 0    60   ~ 0
D400
Text Notes 6925 2300 0    60   ~ 0
D500
Text Notes 7550 2200 0    60   ~ 0
0100 
Text Notes 8125 2100 0    60   ~ 0
0000 
Text Notes 8125 2200 0    60   ~ 0
0000 
Text Notes 8125 2300 0    60   ~ 0
0000 
Text Notes 8125 2000 0    60   ~ 0
0
Text Notes 8675 2600 0    60   ~ 0
LLL L H H H H H H H\nLLH H L H H H H H H\nLHL H H L H H H H H\nLHH H H H L H H H H\nHLL H H H H L H H H\nHLH H H H H H L H H\nHHL H H H H H H L H\nHHH H H H H H H H L
Text Notes 7550 2425 0    60   ~ 0
0XXX
Text Notes 7275 2425 0    60   ~ 0
1101
Text Notes 7825 2425 0    60   ~ 0
XXXX
Text Notes 8125 2425 0    60   ~ 0
XXXX
NoConn ~ 5900 2500
Text Notes 6925 2525 0    60   ~ 0
DE00
Text Notes 7275 2525 0    60   ~ 0
1101
Text Notes 7550 2525 0    60   ~ 0
111X
$Comp
L GND #PWR05
U 1 1 5D8A5381
P 4625 2675
F 0 "#PWR05" H 4625 2425 50  0001 C CNN
F 1 "GND" H 4625 2525 50  0000 C CNN
F 2 "" H 4625 2675 50  0001 C CNN
F 3 "" H 4625 2675 50  0001 C CNN
	1    4625 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 2675 4625 2600
Wire Wire Line
	4625 2600 4700 2600
Text Notes 5975 2100 0    60   ~ 0
$x400
Text Notes 5975 2000 0    60   ~ 0
$x200
Text Notes 5975 2200 0    60   ~ 0
$x600
Text Notes 5975 2300 0    60   ~ 0
$x800
Text Notes 5975 2500 0    60   ~ 0
$xC00
Text Notes 5975 2400 0    60   ~ 0
$xA00
NoConn ~ 5900 2400
$Comp
L GND #PWR06
U 1 1 5D8A817E
P 2650 6875
F 0 "#PWR06" H 2650 6625 50  0001 C CNN
F 1 "GND" H 2650 6725 50  0000 C CNN
F 2 "" H 2650 6875 50  0001 C CNN
F 3 "" H 2650 6875 50  0001 C CNN
	1    2650 6875
	1    0    0    -1  
$EndComp
Text Label 3775 6675 2    60   ~ 0
D0
Text Label 3775 6575 2    60   ~ 0
D1
Text Label 3775 6475 2    60   ~ 0
D2
Text Label 3775 6375 2    60   ~ 0
D3
Text Label 3775 6275 2    60   ~ 0
D4
Text Label 3775 6175 2    60   ~ 0
D5
Text Label 3775 6075 2    60   ~ 0
D6
Text Label 3775 5975 2    60   ~ 0
D7
Entry Wire Line
	3900 6675 3800 6575
Entry Wire Line
	3900 6575 3800 6475
Entry Wire Line
	3900 6475 3800 6375
Entry Wire Line
	3900 6375 3800 6275
Entry Wire Line
	3900 6275 3800 6175
Entry Wire Line
	3900 6175 3800 6075
Entry Wire Line
	3900 6075 3800 5975
Entry Wire Line
	3900 6775 3800 6675
Wire Wire Line
	3375 5975 3800 5975
Wire Wire Line
	3375 6075 3800 6075
Wire Wire Line
	3375 6175 3800 6175
Wire Wire Line
	3375 6275 3800 6275
Wire Wire Line
	3375 6375 3800 6375
Wire Wire Line
	3375 6475 3800 6475
Wire Wire Line
	3375 6575 3800 6575
Wire Wire Line
	3375 6675 3800 6675
$Comp
L VCC #PWR07
U 1 1 5D8AAF5C
P 2650 5100
F 0 "#PWR07" H 2650 4950 50  0001 C CNN
F 1 "VCC" H 2650 5250 50  0000 C CNN
F 2 "" H 2650 5100 50  0001 C CNN
F 3 "" H 2650 5100 50  0001 C CNN
	1    2650 5100
	1    0    0    -1  
$EndComp
NoConn ~ 3375 5775
NoConn ~ 3375 5875
Wire Wire Line
	3375 5475 4150 5475
Wire Wire Line
	4150 5475 4150 5550
$Comp
L GND #PWR08
U 1 1 5D8AC303
P 4150 6250
F 0 "#PWR08" H 4150 6000 50  0001 C CNN
F 1 "GND" H 4150 6100 50  0000 C CNN
F 2 "" H 4150 6250 50  0001 C CNN
F 3 "" H 4150 6250 50  0001 C CNN
	1    4150 6250
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5D8AF7BE
P 4150 5700
F 0 "RV1" V 3975 5700 50  0000 C CNN
F 1 "10k" V 4050 5700 50  0000 C CNN
F 2 "Potentiometer:Potentiometer_Trimmer_Bourns_3296W" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L LM386 U2
U 1 1 5D8AF9C1
P 4675 5800
F 0 "U2" H 4650 5800 50  0000 L CNN
F 1 "LM386" H 4750 5925 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4775 5900 50  0001 C CNN
F 3 "" H 4875 6000 50  0001 C CNN
	1    4675 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5700 4375 5700
Wire Wire Line
	4375 5900 4275 5900
Wire Wire Line
	4275 5900 4275 6175
Wire Wire Line
	4575 6175 4575 6100
Wire Wire Line
	4150 5850 4150 6250
Wire Wire Line
	4150 6175 4575 6175
Connection ~ 4275 6175
Connection ~ 4150 6175
$Comp
L CP_Small C13
U 1 1 5D8B0C8B
P 4825 5125
F 0 "C13" H 4835 5195 50  0000 L CNN
F 1 "10uF*" H 4835 5045 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 4825 5125 50  0001 C CNN
F 3 "" H 4825 5125 50  0001 C CNN
	1    4825 5125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5D8B0DAA
P 4825 5225
F 0 "#PWR09" H 4825 4975 50  0001 C CNN
F 1 "GND" H 4825 5075 50  0000 C CNN
F 2 "" H 4825 5225 50  0001 C CNN
F 3 "" H 4825 5225 50  0001 C CNN
	1    4825 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 4900 4675 5500
Wire Wire Line
	4825 4900 4825 5025
$Comp
L VCC #PWR010
U 1 1 5D8B13F7
P 4575 4825
F 0 "#PWR010" H 4575 4675 50  0001 C CNN
F 1 "VCC" H 4575 4975 50  0000 C CNN
F 2 "" H 4575 4825 50  0001 C CNN
F 3 "" H 4575 4825 50  0001 C CNN
	1    4575 4825
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5D8B15AB
P 4425 5125
F 0 "C2" H 4450 5225 50  0000 L CNN
F 1 "100nF" H 4450 5025 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4463 4975 50  0001 C CNN
F 3 "" H 4425 5125 50  0001 C CNN
	1    4425 5125
	-1   0    0    -1  
$EndComp
$Comp
L CP_Small C19
U 1 1 5D8B1DBF
P 11375 10550
F 0 "C19" H 11385 10620 50  0000 L CNN
F 1 "100uF" H 11385 10470 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 11375 10550 50  0001 C CNN
F 3 "" H 11375 10550 50  0001 C CNN
	1    11375 10550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5D8B26F1
P 4425 5275
F 0 "#PWR011" H 4425 5025 50  0001 C CNN
F 1 "GND" H 4425 5125 50  0000 C CNN
F 2 "" H 4425 5275 50  0001 C CNN
F 3 "" H 4425 5275 50  0001 C CNN
	1    4425 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 4825 4575 5500
Wire Wire Line
	4425 4900 4425 4975
Wire Wire Line
	4425 4900 4575 4900
Connection ~ 4575 4900
Wire Wire Line
	4825 4900 4675 4900
$Comp
L CP_Small C11
U 1 1 5D8B321E
P 4725 6400
F 0 "C11" V 4825 6375 50  0000 L CNN
F 1 "10uF*" V 4675 6500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 4725 6400 50  0001 C CNN
F 3 "" H 4725 6400 50  0001 C CNN
	1    4725 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4675 6100 4675 6250
Wire Wire Line
	4675 6250 4550 6250
Wire Wire Line
	4550 6250 4550 6400
Wire Wire Line
	4550 6400 4625 6400
Wire Wire Line
	4775 6100 4775 6250
Wire Wire Line
	4775 6250 4900 6250
Wire Wire Line
	4900 6250 4900 6400
Wire Wire Line
	4900 6400 4825 6400
$Comp
L C C15
U 1 1 5D8B4258
P 5175 6025
F 0 "C15" H 5200 6125 50  0000 L CNN
F 1 "47nF" H 5200 5925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5213 5875 50  0001 C CNN
F 3 "" H 5175 6025 50  0001 C CNN
	1    5175 6025
	1    0    0    1   
$EndComp
Wire Wire Line
	5175 5875 5175 5800
$Comp
L R R1
U 1 1 5D8B4A16
P 5175 6325
F 0 "R1" V 5255 6325 50  0000 C CNN
F 1 "10" V 5175 6325 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 6325 50  0001 C CNN
F 3 "" H 5175 6325 50  0001 C CNN
	1    5175 6325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5D8B4C44
P 5175 6475
F 0 "#PWR012" H 5175 6225 50  0001 C CNN
F 1 "GND" H 5175 6325 50  0000 C CNN
F 2 "" H 5175 6475 50  0001 C CNN
F 3 "" H 5175 6475 50  0001 C CNN
	1    5175 6475
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C17
U 1 1 5D8B4ECD
P 5425 5800
F 0 "C17" V 5525 5775 50  0000 L CNN
F 1 "220uF" V 5375 5525 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 5425 5800 50  0001 C CNN
F 3 "" H 5425 5800 50  0001 C CNN
	1    5425 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4975 5800 5325 5800
Connection ~ 5175 5800
Text GLabel 5750 5800 2    60   Output ~ 0
LEFT
Wire Wire Line
	5750 5800 5525 5800
Wire Bus Line
	3900 6075 3900 7200
Wire Bus Line
	1400 5875 1400 7200
Wire Bus Line
	1400 7200 3900 7200
$Comp
L SID U3
U 1 1 5D8B8018
P 2650 8525
F 0 "U3" H 2275 9050 60  0000 C CNN
F 1 "SID #2" H 2650 8225 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2075 8725 60  0001 C CNN
F 3 "" H 2075 8725 60  0000 C CNN
	1    2650 8525
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5D8B801E
P 1600 8075
F 0 "C8" V 1475 8000 50  0000 L CNN
F 1 "470pF" V 1725 7975 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1638 7925 50  0001 C CNN
F 3 "" H 1600 8075 50  0001 C CNN
	1    1600 8075
	0    1    -1   0   
$EndComp
Wire Wire Line
	1850 8225 1925 8225
Wire Wire Line
	1850 8075 1850 8225
Wire Wire Line
	1400 8325 1925 8325
Wire Wire Line
	1400 8075 1400 8325
$Comp
L C C10
U 1 1 5D8B8028
P 1100 8075
F 0 "C10" V 975 8000 50  0000 L CNN
F 1 "470pF" V 1225 7975 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1138 7925 50  0001 C CNN
F 3 "" H 1100 8075 50  0001 C CNN
	1    1100 8075
	0    1    -1   0   
$EndComp
Wire Wire Line
	1250 8075 1325 8075
Wire Wire Line
	1325 8075 1325 8425
Wire Wire Line
	1325 8425 1925 8425
Wire Wire Line
	1925 8525 875  8525
Wire Wire Line
	875  8525 875  8075
Wire Wire Line
	875  8075 950  8075
Wire Wire Line
	1850 8075 1750 8075
Wire Wire Line
	1400 8075 1450 8075
Text Label 1525 8625 0    60   ~ 0
RESET
Text Label 1525 8725 0    60   ~ 0
PHI2
Text Label 1525 8825 0    60   ~ 0
R/~W
Text GLabel 1925 8925 0    60   Input ~ 0
~SID2
Text Label 1525 9025 0    60   ~ 0
A0
Text Label 1525 9125 0    60   ~ 0
A1
Text Label 1525 9225 0    60   ~ 0
A2
Text Label 1525 9325 0    60   ~ 0
A3
Text Label 1525 9425 0    60   ~ 0
A4
Entry Wire Line
	1400 9525 1500 9425
Entry Wire Line
	1400 9425 1500 9325
Entry Wire Line
	1400 9325 1500 9225
Entry Wire Line
	1400 9225 1500 9125
Entry Wire Line
	1400 9125 1500 9025
Wire Wire Line
	1500 9425 1925 9425
Wire Wire Line
	1500 9325 1925 9325
Wire Wire Line
	1500 9225 1925 9225
Wire Wire Line
	1500 9125 1925 9125
Wire Wire Line
	1500 9025 1925 9025
Entry Wire Line
	1400 8925 1500 8825
Entry Wire Line
	1400 8825 1500 8725
Entry Wire Line
	1400 8725 1500 8625
Wire Wire Line
	1500 8825 1925 8825
Wire Wire Line
	1500 8725 1925 8725
Wire Wire Line
	1500 8625 1925 8625
$Comp
L GND #PWR013
U 1 1 5D8B804F
P 2650 9725
F 0 "#PWR013" H 2650 9475 50  0001 C CNN
F 1 "GND" H 2650 9575 50  0000 C CNN
F 2 "" H 2650 9725 50  0001 C CNN
F 3 "" H 2650 9725 50  0001 C CNN
	1    2650 9725
	1    0    0    -1  
$EndComp
Text Label 3775 9525 2    60   ~ 0
D0
Text Label 3775 9425 2    60   ~ 0
D1
Text Label 3775 9325 2    60   ~ 0
D2
Text Label 3775 9225 2    60   ~ 0
D3
Text Label 3775 9125 2    60   ~ 0
D4
Text Label 3775 9025 2    60   ~ 0
D5
Text Label 3775 8925 2    60   ~ 0
D6
Text Label 3775 8825 2    60   ~ 0
D7
Entry Wire Line
	3900 9525 3800 9425
Entry Wire Line
	3900 9425 3800 9325
Entry Wire Line
	3900 9325 3800 9225
Entry Wire Line
	3900 9225 3800 9125
Entry Wire Line
	3900 9125 3800 9025
Entry Wire Line
	3900 9025 3800 8925
Entry Wire Line
	3900 8925 3800 8825
Entry Wire Line
	3900 9625 3800 9525
Wire Wire Line
	3375 8825 3800 8825
Wire Wire Line
	3375 8925 3800 8925
Wire Wire Line
	3375 9025 3800 9025
Wire Wire Line
	3375 9125 3800 9125
Wire Wire Line
	3375 9225 3800 9225
Wire Wire Line
	3375 9325 3800 9325
Wire Wire Line
	3375 9425 3800 9425
Wire Wire Line
	3375 9525 3800 9525
$Comp
L VCC #PWR014
U 1 1 5D8B806D
P 2650 7950
F 0 "#PWR014" H 2650 7800 50  0001 C CNN
F 1 "VCC" H 2650 8100 50  0000 C CNN
F 2 "" H 2650 7950 50  0001 C CNN
F 3 "" H 2650 7950 50  0001 C CNN
	1    2650 7950
	1    0    0    -1  
$EndComp
NoConn ~ 3375 8625
NoConn ~ 3375 8725
Wire Wire Line
	3375 8325 4150 8325
Wire Wire Line
	4150 8325 4150 8400
$Comp
L GND #PWR015
U 1 1 5D8B8077
P 4150 9100
F 0 "#PWR015" H 4150 8850 50  0001 C CNN
F 1 "GND" H 4150 8950 50  0000 C CNN
F 2 "" H 4150 9100 50  0001 C CNN
F 3 "" H 4150 9100 50  0001 C CNN
	1    4150 9100
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 5D8B807D
P 4150 8550
F 0 "RV2" V 3975 8550 50  0000 C CNN
F 1 "10k" V 4050 8550 50  0000 C CNN
F 2 "Potentiometer:Potentiometer_Trimmer_Bourns_3296W" H 4150 8550 50  0001 C CNN
F 3 "" H 4150 8550 50  0001 C CNN
	1    4150 8550
	1    0    0    -1  
$EndComp
$Comp
L LM386 U4
U 1 1 5D8B8083
P 4675 8650
F 0 "U4" H 4650 8650 50  0000 L CNN
F 1 "LM386" H 4750 8775 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4775 8750 50  0001 C CNN
F 3 "" H 4875 8850 50  0001 C CNN
	1    4675 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 8550 4375 8550
Wire Wire Line
	4375 8750 4275 8750
Wire Wire Line
	4275 8750 4275 9025
Wire Wire Line
	4575 9025 4575 8950
Wire Wire Line
	4150 8700 4150 9100
Wire Wire Line
	4150 9025 4575 9025
Connection ~ 4275 9025
Connection ~ 4150 9025
$Comp
L CP_Small C14
U 1 1 5D8B8091
P 4825 7975
F 0 "C14" H 4835 8045 50  0000 L CNN
F 1 "10uF*" H 4835 7895 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 4825 7975 50  0001 C CNN
F 3 "" H 4825 7975 50  0001 C CNN
	1    4825 7975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5D8B8097
P 4825 8075
F 0 "#PWR016" H 4825 7825 50  0001 C CNN
F 1 "GND" H 4825 7925 50  0000 C CNN
F 2 "" H 4825 8075 50  0001 C CNN
F 3 "" H 4825 8075 50  0001 C CNN
	1    4825 8075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 7750 4675 8350
Wire Wire Line
	4825 7750 4825 7875
$Comp
L VCC #PWR017
U 1 1 5D8B809F
P 4575 7675
F 0 "#PWR017" H 4575 7525 50  0001 C CNN
F 1 "VCC" H 4575 7825 50  0000 C CNN
F 2 "" H 4575 7675 50  0001 C CNN
F 3 "" H 4575 7675 50  0001 C CNN
	1    4575 7675
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5D8B80A5
P 4425 7975
F 0 "C4" H 4450 8075 50  0000 L CNN
F 1 "100nF" H 4450 7875 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4463 7825 50  0001 C CNN
F 3 "" H 4425 7975 50  0001 C CNN
	1    4425 7975
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5D8B80AB
P 4425 8125
F 0 "#PWR018" H 4425 7875 50  0001 C CNN
F 1 "GND" H 4425 7975 50  0000 C CNN
F 2 "" H 4425 8125 50  0001 C CNN
F 3 "" H 4425 8125 50  0001 C CNN
	1    4425 8125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 7675 4575 8350
Wire Wire Line
	4425 7750 4425 7825
Wire Wire Line
	4425 7750 4575 7750
Connection ~ 4575 7750
Wire Wire Line
	4825 7750 4675 7750
$Comp
L CP_Small C12
U 1 1 5D8B80B6
P 4725 9250
F 0 "C12" V 4825 9225 50  0000 L CNN
F 1 "10uF*" V 4675 9350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 4725 9250 50  0001 C CNN
F 3 "" H 4725 9250 50  0001 C CNN
	1    4725 9250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4675 8950 4675 9100
Wire Wire Line
	4675 9100 4550 9100
Wire Wire Line
	4550 9100 4550 9250
Wire Wire Line
	4550 9250 4625 9250
Wire Wire Line
	4775 8950 4775 9100
Wire Wire Line
	4775 9100 4900 9100
Wire Wire Line
	4900 9100 4900 9250
Wire Wire Line
	4900 9250 4825 9250
$Comp
L C C16
U 1 1 5D8B80C4
P 5175 8875
F 0 "C16" H 5200 8975 50  0000 L CNN
F 1 "47nF" H 5200 8775 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5213 8725 50  0001 C CNN
F 3 "" H 5175 8875 50  0001 C CNN
	1    5175 8875
	1    0    0    1   
$EndComp
Wire Wire Line
	5175 8725 5175 8650
$Comp
L R R2
U 1 1 5D8B80CB
P 5175 9175
F 0 "R2" V 5255 9175 50  0000 C CNN
F 1 "10" V 5175 9175 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 9175 50  0001 C CNN
F 3 "" H 5175 9175 50  0001 C CNN
	1    5175 9175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5D8B80D1
P 5175 9325
F 0 "#PWR019" H 5175 9075 50  0001 C CNN
F 1 "GND" H 5175 9175 50  0000 C CNN
F 2 "" H 5175 9325 50  0001 C CNN
F 3 "" H 5175 9325 50  0001 C CNN
	1    5175 9325
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C18
U 1 1 5D8B80D7
P 5425 8650
F 0 "C18" V 5525 8625 50  0000 L CNN
F 1 "220uF" V 5375 8375 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 5425 8650 50  0001 C CNN
F 3 "" H 5425 8650 50  0001 C CNN
	1    5425 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4975 8650 5325 8650
Connection ~ 5175 8650
Text GLabel 5750 8650 2    60   Output ~ 0
RIGHT
Wire Wire Line
	5750 8650 5525 8650
Wire Bus Line
	3900 8925 3900 10050
Wire Bus Line
	1400 8725 1400 10050
Wire Bus Line
	1400 10050 3900 10050
$Comp
L TRS_3.5mm J4
U 1 1 5D8BC484
P 12575 6800
F 0 "J4" H 12575 7090 50  0000 C CNN
F 1 "AUDIO" H 12425 6600 50  0000 L CNN
F 2 "TRS:Tayda_3.5mm_stereo_TRS_jack_A-853" H 12825 6900 50  0001 C CNN
F 3 "" H 12825 6900 50  0001 C CNN
	1    12575 6800
	-1   0    0    -1  
$EndComp
Text GLabel 11200 6700 2    60   Output ~ 0
AUD_L
Text GLabel 12300 6700 0    60   Input ~ 0
AUD_R
Wire Wire Line
	12375 6700 12300 6700
Wire Wire Line
	12300 6800 12375 6800
NoConn ~ 12375 6600
NoConn ~ 12375 6900
$Comp
L GND #PWR020
U 1 1 5D8BDDE8
P 12775 7075
F 0 "#PWR020" H 12775 6825 50  0001 C CNN
F 1 "GND" H 12775 6925 50  0000 C CNN
F 2 "" H 12775 7075 50  0001 C CNN
F 3 "" H 12775 7075 50  0001 C CNN
	1    12775 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	12775 7075 12775 7000
$Comp
L R R3
U 1 1 5D8C02C6
P 10025 6600
F 0 "R3" V 10105 6600 50  0000 C CNN
F 1 "470" V 10025 6600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9955 6600 50  0001 C CNN
F 3 "" H 10025 6600 50  0001 C CNN
	1    10025 6600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5D8C059D
P 10025 6900
F 0 "R4" V 10105 6900 50  0000 C CNN
F 1 "470" V 10025 6900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9955 6900 50  0001 C CNN
F 3 "" H 10025 6900 50  0001 C CNN
	1    10025 6900
	0    1    1    0   
$EndComp
Text GLabel 10475 6800 0    60   Input ~ 0
RIGHT
Text GLabel 10475 6700 0    60   Input ~ 0
LEFT
$Comp
L Conn_02x05_Odd_Even J3
U 1 1 5D8C2BF1
P 10750 6700
F 0 "J3" H 10800 7000 50  0000 C CNN
F 1 "MIXING" H 10800 6400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 10750 6700 50  0001 C CNN
F 3 "" H 10750 6700 50  0001 C CNN
	1    10750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10475 6700 10550 6700
Wire Wire Line
	10475 6800 10550 6800
Wire Wire Line
	10175 6600 10550 6600
Wire Wire Line
	10175 6900 10550 6900
Wire Wire Line
	9800 6900 9875 6900
Wire Wire Line
	9800 6500 9800 6900
Wire Wire Line
	9800 6600 9875 6600
Wire Wire Line
	9800 6500 10550 6500
Connection ~ 9800 6600
Wire Wire Line
	11050 6700 11200 6700
Wire Wire Line
	11125 6700 11125 6500
Wire Wire Line
	11050 6500 11600 6500
Connection ~ 11125 6700
Text GLabel 11200 6800 2    60   Output ~ 0
AUD_R
Wire Wire Line
	11050 6800 11200 6800
Wire Wire Line
	11050 6900 11600 6900
Wire Wire Line
	11600 6900 11600 6500
Connection ~ 11125 6500
Wire Notes Line
	10750 6700 10775 6700
Wire Notes Line
	10775 6700 10775 6600
Wire Notes Line
	10775 6600 10750 6600
Wire Notes Line
	10750 6800 10775 6800
Wire Notes Line
	10775 6800 10775 6900
Wire Notes Line
	10775 6900 10750 6900
Wire Notes Line
	10750 6500 10850 6500
NoConn ~ 11050 6600
Text GLabel 12300 6800 0    60   Input ~ 0
AUD_L
Text Notes 10700 7200 0    60   ~ 0
1-2, 3-5 and 7-9
Text Notes 9850 7200 0    60   ~ 0
Stereo to mono:
Text Notes 9850 7300 0    60   ~ 0
Stereo SID:
Text Notes 10700 7300 0    60   ~ 0
5-6, 7-8
Text Notes 9850 7400 0    60   ~ 0
Mono SID:
Text Notes 10700 7400 0    60   ~ 0
5-6, 8-10
Text Notes 5350 5350 0    60   ~ 0
* Adjust components according to\naudio quality, may be omitted.
Text Notes 5350 8200 0    60   ~ 0
* Adjust components according to\naudio quality, may be omitted.
$Comp
L GND #PWR021
U 1 1 5D8CFC43
P 11375 10850
F 0 "#PWR021" H 11375 10600 50  0001 C CNN
F 1 "GND" H 11375 10700 50  0000 C CNN
F 2 "" H 11375 10850 50  0001 C CNN
F 3 "" H 11375 10850 50  0001 C CNN
	1    11375 10850
	1    0    0    -1  
$EndComp
Wire Bus Line
	750  6450 1400 6450
Wire Bus Line
	750  9400 1400 9400
Wire Bus Line
	13950 8375 14250 8375
Wire Bus Line
	13950 1275 13950 8375
Wire Bus Line
	13950 6525 14250 6525
Wire Bus Line
	4100 1900 4200 1900
$Comp
L VCC #PWR022
U 1 1 5D8E40D6
P 4625 2325
F 0 "#PWR022" H 4625 2175 50  0001 C CNN
F 1 "VCC" H 4625 2475 50  0000 C CNN
F 2 "" H 4625 2325 50  0001 C CNN
F 3 "" H 4625 2325 50  0001 C CNN
	1    4625 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 2325 4625 2400
Wire Wire Line
	4625 2400 4700 2400
NoConn ~ 14750 8075
NoConn ~ 14750 8175
NoConn ~ 14750 8275
NoConn ~ 14750 8375
$EndSCHEMATC
