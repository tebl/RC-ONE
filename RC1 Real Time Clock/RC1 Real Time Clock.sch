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
LIBS:ds12885
LIBS:RC1 Real Time Clock-cache
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
P 10000 10550
F 0 "C1" H 10025 10650 50  0000 L CNN
F 1 "100nF" H 10025 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10038 10400 50  0001 C CNN
F 3 "" H 10000 10550 50  0001 C CNN
	1    10000 10550
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5D7FC44D
P 10000 10250
F 0 "#PWR03" H 10000 10100 50  0001 C CNN
F 1 "VCC" H 10000 10400 50  0000 C CNN
F 2 "" H 10000 10250 50  0001 C CNN
F 3 "" H 10000 10250 50  0001 C CNN
	1    10000 10250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5D7FC44E
P 10275 10550
F 0 "C2" H 10300 10650 50  0000 L CNN
F 1 "100nF" H 10300 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10313 10400 50  0001 C CNN
F 3 "" H 10275 10550 50  0001 C CNN
	1    10275 10550
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5D7FC44F
P 10550 10550
F 0 "C3" H 10575 10650 50  0000 L CNN
F 1 "100nF" H 10575 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10588 10400 50  0001 C CNN
F 3 "" H 10550 10550 50  0001 C CNN
	1    10550 10550
	-1   0    0    -1  
$EndComp
Text Notes 12175 10925 0    60   ~ 0
RC-ONE Real Time Clock (RTC)
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
L C C4
U 1 1 5D7FC460
P 10825 10550
F 0 "C4" H 10850 10650 50  0000 L CNN
F 1 "100nF" H 10850 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10863 10400 50  0001 C CNN
F 3 "" H 10825 10550 50  0001 C CNN
	1    10825 10550
	-1   0    0    -1  
$EndComp
Text Label 14725 7575 2    60   ~ 0
A0
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
	14250 6675 14350 6775
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
	10000 10775 10000 10700
Wire Wire Line
	10000 10250 10000 10400
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
	10000 10775 11375 10775
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
	10275 10400 10275 10325
Wire Wire Line
	10000 10325 11375 10325
Connection ~ 10000 10325
Connection ~ 10275 10325
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
	10275 10700 10275 10775
Connection ~ 10275 10775
Wire Wire Line
	10550 10400 10550 10325
Connection ~ 10550 10325
Wire Wire Line
	10825 10400 10825 10325
Connection ~ 10825 10325
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
Wire Bus Line
	825  2450 750  2450
Wire Bus Line
	750  1275 13950 1275
NoConn ~ 2525 3000
NoConn ~ 5900 2300
NoConn ~ 5900 2200
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
U 1 1 5D8CFC43
P 11375 10850
F 0 "#PWR06" H 11375 10600 50  0001 C CNN
F 1 "GND" H 11375 10700 50  0000 C CNN
F 2 "" H 11375 10850 50  0001 C CNN
F 3 "" H 11375 10850 50  0001 C CNN
	1    11375 10850
	1    0    0    -1  
$EndComp
Wire Bus Line
	13950 8375 14250 8375
Wire Bus Line
	13950 1275 13950 8375
Wire Bus Line
	13950 6525 14250 6525
NoConn ~ 14750 8075
NoConn ~ 14750 8175
NoConn ~ 14750 8275
NoConn ~ 14750 8375
Text Notes 11825 10550 0    60   ~ 0
The good thing about adding a sound interface is the ability to make sounds, but without\na proper interrupt generator most of it will be out of tune - a Real Time Clock (RTC) can\nhelp with that. Also, it keeps time so I can build a clock if I want to!\n\nThere are more advanced chips out there, but the DS12885 is cheap as noone really\nwants those anymore... except those building extremely outdated computers.
Wire Bus Line
	750  1275 750  7600
NoConn ~ 5900 2100
NoConn ~ 5900 2600
Text Notes 5975 2600 0    60   ~ 0
$xE00
Text Notes 5975 2100 0    60   ~ 0
$x400
Wire Wire Line
	5900 2000 6350 2000
$Comp
L DS12885 U2
U 1 1 5D8A68D5
P 3950 5900
F 0 "U2" H 3675 6950 60  0000 C CNN
F 1 "DS12885" V 3950 5900 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket" H 2150 6150 60  0001 C CNN
F 3 "" H 2150 6150 60  0000 C CNN
	1    3950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6600 4675 6600
Wire Wire Line
	4675 6600 4675 6675
$Comp
L GND #PWR07
U 1 1 5D8A69A1
P 4675 6675
F 0 "#PWR07" H 4675 6425 50  0001 C CNN
F 1 "GND" H 4675 6525 50  0000 C CNN
F 2 "" H 4675 6675 50  0001 C CNN
F 3 "" H 4675 6675 50  0001 C CNN
	1    4675 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7050 3900 7125
Wire Wire Line
	3900 7125 4000 7125
Wire Wire Line
	4000 7050 4000 7200
$Comp
L GND #PWR08
U 1 1 5D8A6C6A
P 4000 7200
F 0 "#PWR08" H 4000 6950 50  0001 C CNN
F 1 "GND" H 4000 7050 50  0000 C CNN
F 2 "" H 4000 7200 50  0001 C CNN
F 3 "" H 4000 7200 50  0001 C CNN
	1    4000 7200
	1    0    0    -1  
$EndComp
Connection ~ 4000 7125
$Comp
L VCC #PWR09
U 1 1 5D8A6ED6
P 3900 4725
F 0 "#PWR09" H 3900 4575 50  0001 C CNN
F 1 "VCC" H 3900 4875 50  0000 C CNN
F 2 "" H 3900 4725 50  0001 C CNN
F 3 "" H 3900 4725 50  0001 C CNN
	1    3900 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4725 3900 4800
Wire Wire Line
	4000 4700 4000 4800
$Comp
L GND #PWR010
U 1 1 5D8A7258
P 4550 4800
F 0 "#PWR010" H 4550 4550 50  0001 C CNN
F 1 "GND" H 4550 4650 50  0000 C CNN
F 2 "" H 4550 4800 50  0001 C CNN
F 3 "" H 4550 4800 50  0001 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4700 4550 4800
$Comp
L Crystal Y1
U 1 1 5D8A763E
P 3225 5300
F 0 "Y1" V 3225 5475 50  0000 C CNN
F 1 "32.768kHz" H 3225 5150 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 3225 5300 50  0001 C CNN
F 3 "" H 3225 5300 50  0001 C CNN
	1    3225 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 5100 3225 5100
Wire Wire Line
	3225 5100 3225 5150
Wire Wire Line
	3225 5450 3225 5500
Wire Wire Line
	3225 5500 3300 5500
Text Label 7150 4950 0    60   ~ 0
A0
Entry Wire Line
	7025 5050 7125 4950
Wire Wire Line
	7125 4950 7450 4950
$Comp
L 74LS04 U1
U 4 1 5D8A7E86
P 7900 4950
F 0 "U1" H 8095 5065 50  0000 C CNN
F 1 "74LS04" H 8090 4825 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7900 4950 50  0001 C CNN
F 3 "" H 7900 4950 50  0001 C CNN
	4    7900 4950
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 5 1 5D8A8029
P 7900 5400
F 0 "U1" H 8095 5515 50  0000 C CNN
F 1 "74LS04" H 8090 5275 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7900 5400 50  0001 C CNN
F 3 "" H 7900 5400 50  0001 C CNN
	5    7900 5400
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 6 1 5D8A8070
P 10475 5250
F 0 "U1" H 10670 5365 50  0000 C CNN
F 1 "74LS04" H 10665 5125 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 10475 5250 50  0001 C CNN
F 3 "" H 10475 5250 50  0001 C CNN
	6    10475 5250
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 1 1 5D8A80B4
P 1775 10400
F 0 "U1" H 1970 10515 50  0000 C CNN
F 1 "74LS04" H 1965 10275 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 1775 10400 50  0001 C CNN
F 3 "" H 1775 10400 50  0001 C CNN
	1    1775 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS04 U1
U 2 1 5D8A80FB
P 2100 10400
F 0 "U1" H 2295 10515 50  0000 C CNN
F 1 "74LS04" H 2290 10275 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2100 10400 50  0001 C CNN
F 3 "" H 2100 10400 50  0001 C CNN
	2    2100 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS04 U1
U 3 1 5D8A8145
P 2425 10400
F 0 "U1" H 2620 10515 50  0000 C CNN
F 1 "74LS04" H 2615 10275 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2425 10400 50  0001 C CNN
F 3 "" H 2425 10400 50  0001 C CNN
	3    2425 10400
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7025 5500 7125 5400
Wire Wire Line
	7125 5400 7450 5400
Text Label 7150 5400 0    60   ~ 0
PHI2
$Comp
L 74LS27 U4
U 1 1 5D8A91A7
P 9425 4350
F 0 "U4" H 9425 4400 50  0000 C CNN
F 1 "74LS27" H 9425 4300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 9425 4350 50  0001 C CNN
F 3 "" H 9425 4350 50  0001 C CNN
	1    9425 4350
	1    0    0    -1  
$EndComp
$Comp
L 74LS27 U4
U 2 1 5D8A9220
P 9425 4800
F 0 "U4" H 9425 4850 50  0000 C CNN
F 1 "74LS27" H 9425 4750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 9425 4800 50  0001 C CNN
F 3 "" H 9425 4800 50  0001 C CNN
	2    9425 4800
	1    0    0    -1  
$EndComp
$Comp
L 74LS27 U4
U 3 1 5D8A927B
P 9425 5250
F 0 "U4" H 9425 5300 50  0000 C CNN
F 1 "74LS27" H 9425 5200 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 9425 5250 50  0001 C CNN
F 3 "" H 9425 5250 50  0001 C CNN
	3    9425 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 4200 8825 4200
Wire Wire Line
	8350 4950 8825 4950
Wire Wire Line
	8825 5100 8750 5100
Wire Wire Line
	8750 5100 8750 4950
Connection ~ 8750 4950
Wire Wire Line
	7375 4950 7375 4200
Connection ~ 7375 4950
Wire Wire Line
	8450 4350 8825 4350
Wire Wire Line
	8450 4650 8825 4650
Wire Wire Line
	8550 4500 8825 4500
Wire Wire Line
	8650 4800 8825 4800
Wire Wire Line
	8650 3700 8650 5250
Wire Wire Line
	8550 4500 8550 5900
Wire Wire Line
	8450 4350 8450 5400
Wire Wire Line
	8450 5400 8350 5400
Connection ~ 8450 4650
Text Label 7150 5900 0    60   ~ 0
R/~W
NoConn ~ 5900 1900
Text GLabel 6350 2000 2    60   Output ~ 0
RTC
Text GLabel 7500 3700 0    60   Input ~ 0
RTC
Text GLabel 11025 4350 2    60   Output ~ 0
RTC_AS
Text GLabel 11025 4800 2    60   Output ~ 0
RTC_DS
Wire Wire Line
	8650 5250 8825 5250
Wire Wire Line
	8825 5400 8550 5400
Connection ~ 8550 5400
$Comp
L SW_SPST SW1
U 1 1 5D8B2AB7
P 2475 5600
F 0 "SW1" H 2475 5725 50  0000 C CNN
F 1 "RAM_CLR" H 2475 5500 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2475 5600 50  0001 C CNN
F 3 "" H 2475 5600 50  0001 C CNN
	1    2475 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2275 5600 2200 5600
Wire Wire Line
	2200 5600 2200 5675
$Comp
L GND #PWR011
U 1 1 5D8B2CD0
P 2200 5675
F 0 "#PWR011" H 2200 5425 50  0001 C CNN
F 1 "GND" H 2200 5525 50  0000 C CNN
F 2 "" H 2200 5675 50  0001 C CNN
F 3 "" H 2200 5675 50  0001 C CNN
	1    2200 5675
	-1   0    0    -1  
$EndComp
Text Notes 9225 4100 0    60   ~ 0
LLL H\nxxH L\nxHx L\nHxx L
Text Notes 11475 4475 0    60   ~ 0
A0 = L\n/PHI = L\nR/W = L
Wire Bus Line
	4200 1900 4100 1900
Wire Bus Line
	4100 1900 4100 1275
$Comp
L VCC #PWR012
U 1 1 5D8B6F2C
P 4625 2325
F 0 "#PWR012" H 4625 2175 50  0001 C CNN
F 1 "VCC" H 4625 2475 50  0000 C CNN
F 2 "" H 4625 2325 50  0001 C CNN
F 3 "" H 4625 2325 50  0001 C CNN
	1    4625 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2400 4625 2400
Wire Wire Line
	4625 2400 4625 2325
Wire Notes Line
	12025 4875 12125 4875
Wire Notes Line
	12125 4875 12125 4775
Wire Notes Line
	12125 4775 12250 4775
Wire Notes Line
	12250 4775 12250 4875
Wire Notes Line
	12250 4875 12350 4875
Wire Notes Line
	12125 4325 12250 4325
Wire Notes Line
	12250 4325 12250 4425
Wire Notes Line
	12250 4425 12350 4425
NoConn ~ 10925 5250
Wire Wire Line
	7125 5900 11025 5900
Entry Wire Line
	7025 6000 7125 5900
$Comp
L C C7
U 1 1 5D8BB160
P 8975 7925
F 0 "C7" H 9000 8025 50  0000 L CNN
F 1 "100nF" H 9000 7825 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9013 7775 50  0001 C CNN
F 3 "" H 8975 7925 50  0001 C CNN
	1    8975 7925
	-1   0    0    -1  
$EndComp
$Comp
L D_Small D1
U 1 1 5D8BB240
P 8975 7525
F 0 "D1" H 8925 7605 50  0000 L CNN
F 1 "1n4148" H 8825 7445 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 8975 7525 50  0001 C CNN
F 3 "" V 8975 7525 50  0001 C CNN
	1    8975 7525
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5D8BB443
P 9300 7300
F 0 "R1" V 9380 7300 50  0000 C CNN
F 1 "100k" V 9300 7300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9230 7300 50  0001 C CNN
F 3 "" H 9300 7300 50  0001 C CNN
	1    9300 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5D8BB806
P 8975 8150
F 0 "#PWR013" H 8975 7900 50  0001 C CNN
F 1 "GND" H 8975 8000 50  0000 C CNN
F 2 "" H 8975 8150 50  0001 C CNN
F 3 "" H 8975 8150 50  0001 C CNN
	1    8975 8150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 5D8BB84A
P 8975 7175
F 0 "#PWR014" H 8975 7025 50  0001 C CNN
F 1 "VCC" H 8975 7325 50  0000 C CNN
F 2 "" H 8975 7175 50  0001 C CNN
F 3 "" H 8975 7175 50  0001 C CNN
	1    8975 7175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8975 7625 8975 7775
Wire Wire Line
	8975 8075 8975 8150
Wire Wire Line
	8975 7175 8975 7425
Connection ~ 8975 7700
Connection ~ 8550 5900
Text GLabel 11025 5900 2    60   Output ~ 0
RTC_R/~W
Wire Wire Line
	10025 4800 11025 4800
Wire Wire Line
	10025 4350 11025 4350
Wire Wire Line
	8650 3700 7500 3700
Connection ~ 8650 4800
Text Label 7150 6275 0    60   ~ 0
~IRQ
Wire Wire Line
	7125 6275 10500 6275
Entry Wire Line
	7025 6375 7125 6275
$Comp
L Jumper_NO_Small JP2
U 1 1 5D8C0DA3
P 10600 6275
F 0 "JP2" H 10600 6355 50  0000 C CNN
F 1 "IRQ_EN" H 10610 6215 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10600 6275 50  0001 C CNN
F 3 "" H 10600 6275 50  0001 C CNN
	1    10600 6275
	1    0    0    -1  
$EndComp
Text GLabel 11025 6275 2    60   Output ~ 0
RTC_~IRQ
Wire Wire Line
	10700 6275 11025 6275
$Comp
L Conn_01x02 J3
U 1 1 5D8C1B94
P 5450 5100
F 0 "J3" H 5450 5200 50  0000 C CNN
F 1 "SQW" H 5450 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5450 5100 50  0001 C CNN
F 3 "" H 5450 5100 50  0001 C CNN
	1    5450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5100 5250 5100
$Comp
L GND #PWR015
U 1 1 5D8C1D1F
P 5175 5275
F 0 "#PWR015" H 5175 5025 50  0001 C CNN
F 1 "GND" H 5175 5125 50  0000 C CNN
F 2 "" H 5175 5275 50  0001 C CNN
F 3 "" H 5175 5275 50  0001 C CNN
	1    5175 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 5275 5175 5200
Wire Wire Line
	5175 5200 5250 5200
Text GLabel 4600 5500 2    60   Input ~ 0
RTC_~IRQ
Text GLabel 4600 5600 2    60   Input ~ 0
RTC_~RST
Text GLabel 4600 5900 2    60   Input ~ 0
RTC_R/~W
$Comp
L Jumper_NC_Dual JP1
U 1 1 5D8C2E75
P 9300 7700
F 0 "JP1" H 9350 7600 50  0000 L CNN
F 1 "RES_SEL" H 9300 7800 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9300 7700 50  0001 C CNN
F 3 "" H 9300 7700 50  0001 C CNN
	1    9300 7700
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR016
U 1 1 5D8C3098
P 9300 7075
F 0 "#PWR016" H 9300 6925 50  0001 C CNN
F 1 "VCC" H 9300 7225 50  0000 C CNN
F 2 "" H 9300 7075 50  0001 C CNN
F 3 "" H 9300 7075 50  0001 C CNN
	1    9300 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 7150 9300 7075
Wire Wire Line
	9300 7450 9300 7600
Wire Wire Line
	9300 7525 9975 7525
Connection ~ 9300 7525
Text GLabel 9975 7525 2    60   Output ~ 0
RTC_~RST
Wire Wire Line
	8975 7700 9050 7700
$Comp
L 74LS14 U3
U 6 1 5D8C52C5
P 10500 8800
F 0 "U3" H 10650 8900 50  0000 C CNN
F 1 "74LS14" H 10700 8700 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 10500 8800 50  0001 C CNN
F 3 "" H 10500 8800 50  0001 C CNN
	6    10500 8800
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U3
U 1 1 5D8C5344
P 4150 10400
F 0 "U3" H 4300 10500 50  0000 C CNN
F 1 "74LS14" H 4350 10300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4150 10400 50  0001 C CNN
F 3 "" H 4150 10400 50  0001 C CNN
	1    4150 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS14 U3
U 2 1 5D8C53B7
P 4475 10400
F 0 "U3" H 4625 10500 50  0000 C CNN
F 1 "74LS14" H 4675 10300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4475 10400 50  0001 C CNN
F 3 "" H 4475 10400 50  0001 C CNN
	2    4475 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS14 U3
U 3 1 5D8C5431
P 4800 10400
F 0 "U3" H 4950 10500 50  0000 C CNN
F 1 "74LS14" H 5000 10300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4800 10400 50  0001 C CNN
F 3 "" H 4800 10400 50  0001 C CNN
	3    4800 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS14 U3
U 4 1 5D8C54AC
P 5125 10400
F 0 "U3" H 5275 10500 50  0000 C CNN
F 1 "74LS14" H 5325 10300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5125 10400 50  0001 C CNN
F 3 "" H 5125 10400 50  0001 C CNN
	4    5125 10400
	0    -1   -1   0   
$EndComp
$Comp
L 74LS14 U3
U 5 1 5D8C5522
P 5450 10400
F 0 "U3" H 5600 10500 50  0000 C CNN
F 1 "74LS14" H 5650 10300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5450 10400 50  0001 C CNN
F 3 "" H 5450 10400 50  0001 C CNN
	5    5450 10400
	0    -1   -1   0   
$EndComp
Text Label 7150 8800 0    60   ~ 0
RESET
Wire Wire Line
	7125 8800 9700 8800
$Comp
L D_Small D2
U 1 1 5D8C5D3C
P 9800 8800
F 0 "D2" H 9750 8880 50  0000 L CNN
F 1 "1n4148" H 9650 8720 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 9800 8800 50  0001 C CNN
F 3 "" V 9800 8800 50  0001 C CNN
	1    9800 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 8800 10050 8800
Text GLabel 11025 8800 2    60   Output ~ 0
RTC_~CS
Wire Wire Line
	10950 8800 11025 8800
$Comp
L R R3
U 1 1 5D8C6ED7
P 9975 9275
F 0 "R3" V 10055 9275 50  0000 C CNN
F 1 "150k" V 9975 9275 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9905 9275 50  0001 C CNN
F 3 "" H 9975 9275 50  0001 C CNN
	1    9975 9275
	1    0    0    -1  
$EndComp
$Comp
L D_Small D3
U 1 1 5D8C73A6
P 10250 9275
F 0 "D3" H 10200 9355 50  0000 L CNN
F 1 "1n4148" H 10100 9195 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 10250 9275 50  0001 C CNN
F 3 "" V 10250 9275 50  0001 C CNN
	1    10250 9275
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 9175 10250 9050
Wire Wire Line
	9975 9050 10250 9050
Wire Wire Line
	9975 8475 9975 9125
Wire Wire Line
	9975 9425 9975 9575
Wire Wire Line
	9975 9500 10250 9500
Wire Wire Line
	10250 9500 10250 9375
Connection ~ 9975 9500
$Comp
L GND #PWR017
U 1 1 5D8C7A66
P 9975 9575
F 0 "#PWR017" H 9975 9325 50  0001 C CNN
F 1 "GND" H 9975 9425 50  0000 C CNN
F 2 "" H 9975 9575 50  0001 C CNN
F 3 "" H 9975 9575 50  0001 C CNN
	1    9975 9575
	1    0    0    -1  
$EndComp
Connection ~ 9975 8800
Connection ~ 9975 9050
$Comp
L R R2
U 1 1 5D8C87B1
P 9975 8325
F 0 "R2" V 10055 8325 50  0000 C CNN
F 1 "100k" V 9975 8325 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9905 8325 50  0001 C CNN
F 3 "" H 9975 8325 50  0001 C CNN
	1    9975 8325
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C8
U 1 1 5D8C8D90
P 10250 8325
F 0 "C8" H 10260 8395 50  0000 L CNN
F 1 "10uF" H 10260 8245 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 10250 8325 50  0001 C CNN
F 3 "" H 10250 8325 50  0001 C CNN
	1    10250 8325
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 8425 10250 8550
Wire Wire Line
	10250 8550 9975 8550
Connection ~ 9975 8550
Wire Wire Line
	9975 8025 9975 8175
Wire Wire Line
	9975 8100 10250 8100
Wire Wire Line
	10250 8100 10250 8225
$Comp
L VCC #PWR018
U 1 1 5D8C9DF4
P 9975 8025
F 0 "#PWR018" H 9975 7875 50  0001 C CNN
F 1 "VCC" H 9975 8175 50  0000 C CNN
F 2 "" H 9975 8025 50  0001 C CNN
F 3 "" H 9975 8025 50  0001 C CNN
	1    9975 8025
	1    0    0    -1  
$EndComp
Connection ~ 9975 8100
Wire Wire Line
	9550 7700 9625 7700
Wire Wire Line
	9625 7700 9625 8800
Connection ~ 9625 8800
Entry Wire Line
	7025 8900 7125 8800
Text GLabel 4600 6100 2    60   Input ~ 0
RTC_~CS
Text GLabel 4600 6400 2    60   Input ~ 0
RTC_AS
Text GLabel 4600 6500 2    60   Input ~ 0
RTC_DS
Text Label 2925 5900 0    60   ~ 0
D0
Text Label 2925 6000 0    60   ~ 0
D1
Text Label 2925 6100 0    60   ~ 0
D2
Text Label 2925 6200 0    60   ~ 0
D3
Text Label 2925 6300 0    60   ~ 0
D4
Text Label 2925 6400 0    60   ~ 0
D5
Text Label 2925 6500 0    60   ~ 0
D6
Text Label 2925 6600 0    60   ~ 0
D7
Entry Wire Line
	2800 6600 2900 6500
Entry Wire Line
	2800 6500 2900 6400
Entry Wire Line
	2800 6400 2900 6300
Entry Wire Line
	2800 6300 2900 6200
Entry Wire Line
	2800 6200 2900 6100
Entry Wire Line
	2800 6100 2900 6000
Entry Wire Line
	2800 6000 2900 5900
Entry Wire Line
	2800 6700 2900 6600
Wire Wire Line
	3300 6000 2900 6000
Wire Wire Line
	3300 6100 2900 6100
Wire Wire Line
	3300 6200 2900 6200
Wire Wire Line
	3300 6300 2900 6300
Wire Wire Line
	3300 6400 2900 6400
Wire Wire Line
	3300 6500 2900 6500
Wire Wire Line
	3300 6600 2900 6600
Wire Wire Line
	3300 5900 2900 5900
Wire Bus Line
	7025 5050 7025 8900
Wire Bus Line
	2800 6000 2800 6700
Wire Bus Line
	2800 6325 2725 6325
Wire Bus Line
	2725 6325 2725 7600
Wire Bus Line
	7025 6650 6925 6650
Wire Bus Line
	6925 6650 6925 7600
Wire Bus Line
	6925 7600 750  7600
NoConn ~ 1775 9950
NoConn ~ 2100 9950
NoConn ~ 2425 9950
NoConn ~ 4150 9950
NoConn ~ 4475 9950
NoConn ~ 4800 9950
NoConn ~ 5125 9950
NoConn ~ 5450 9950
$Comp
L GND #PWR019
U 1 1 5D8D0804
P 5450 11000
F 0 "#PWR019" H 5450 10750 50  0001 C CNN
F 1 "GND" H 5450 10850 50  0000 C CNN
F 2 "" H 5450 11000 50  0001 C CNN
F 3 "" H 5450 11000 50  0001 C CNN
	1    5450 11000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 10850 5450 11000
Wire Wire Line
	4150 10925 5450 10925
Wire Wire Line
	4150 10925 4150 10850
Connection ~ 5450 10925
Wire Wire Line
	4475 10850 4475 10925
Connection ~ 4475 10925
Wire Wire Line
	4800 10850 4800 10925
Connection ~ 4800 10925
Wire Wire Line
	5125 10850 5125 10925
Connection ~ 5125 10925
Wire Wire Line
	1775 10850 1775 10925
Wire Wire Line
	1775 10925 2425 10925
Wire Wire Line
	2425 10850 2425 11000
Wire Wire Line
	2100 10850 2100 10925
Connection ~ 2100 10925
Connection ~ 2425 10925
$Comp
L GND #PWR020
U 1 1 5D8D18EA
P 2425 11000
F 0 "#PWR020" H 2425 10750 50  0001 C CNN
F 1 "GND" H 2425 10850 50  0000 C CNN
F 2 "" H 2425 11000 50  0001 C CNN
F 3 "" H 2425 11000 50  0001 C CNN
	1    2425 11000
	1    0    0    -1  
$EndComp
Wire Notes Line
	8825 5550 8825 5025
Wire Notes Line
	8825 5025 11050 5025
Wire Notes Line
	11050 5025 11050 5550
Wire Notes Line
	11050 5550 8825 5550
Text Notes 10600 5525 0    60   ~ 0
z80 bus?
$Comp
L C C5
U 1 1 5D8D4869
P 11100 10550
F 0 "C5" H 11125 10650 50  0000 L CNN
F 1 "100nF" H 11125 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11138 10400 50  0001 C CNN
F 3 "" H 11100 10550 50  0001 C CNN
	1    11100 10550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11100 10325 11100 10400
$Comp
L C C6
U 1 1 5D8D5225
P 11375 10550
F 0 "C6" H 11400 10650 50  0000 L CNN
F 1 "100nF" H 11400 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11413 10400 50  0001 C CNN
F 3 "" H 11375 10550 50  0001 C CNN
	1    11375 10550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11375 10325 11375 10400
Connection ~ 11100 10325
Wire Wire Line
	11375 10700 11375 10850
Connection ~ 11375 10775
Wire Wire Line
	14750 6975 14350 6975
Entry Wire Line
	14250 6875 14350 6975
Text Label 14725 6975 2    60   ~ 0
~IRQ
NoConn ~ 14750 7675
NoConn ~ 14750 7775
NoConn ~ 14750 7875
NoConn ~ 14750 7975
$Comp
L Conn_01x02 J4
U 1 1 5D8D85CD
P 4225 4425
F 0 "J4" H 4225 4525 50  0000 C CNN
F 1 "Battery" H 4225 4225 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4225 4425 50  0001 C CNN
F 3 "" H 4225 4425 50  0001 C CNN
	1    4225 4425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4225 4625 4225 4700
Wire Wire Line
	4225 4700 4000 4700
Wire Wire Line
	4325 4625 4325 4700
Wire Wire Line
	4325 4700 4550 4700
Wire Wire Line
	2675 5600 3300 5600
$EndSCHEMATC
