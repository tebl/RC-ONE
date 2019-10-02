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
LIBS:rc1_backplane
LIBS:65xx
LIBS:RC1 65K Expansion-cache
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
U 1 1 5D7B9142
P 14950 7375
F 0 "J1" H 14950 9375 50  0000 C CNN
F 1 "Expansion" V 15400 7325 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x39_Pitch2.54mm" H 14950 7375 50  0001 C CNN
F 3 "" H 14950 7375 50  0001 C CNN
	1    14950 7375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5D7B9143
P 14100 7150
F 0 "#PWR01" H 14100 6900 50  0001 C CNN
F 1 "GND" H 14100 7000 50  0000 C CNN
F 2 "" H 14100 7150 50  0001 C CNN
F 3 "" H 14100 7150 50  0001 C CNN
	1    14100 7150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5D7B9144
P 14150 6975
F 0 "#PWR02" H 14150 6825 50  0001 C CNN
F 1 "VCC" H 14150 7125 50  0000 C CNN
F 2 "" H 14150 6975 50  0001 C CNN
F 3 "" H 14150 6975 50  0001 C CNN
	1    14150 6975
	1    0    0    -1  
$EndComp
Entry Wire Line
	14250 5375 14350 5475
Entry Wire Line
	14250 5475 14350 5575
Entry Wire Line
	14250 5575 14350 5675
Entry Wire Line
	14250 5675 14350 5775
Entry Wire Line
	14250 5775 14350 5875
Entry Wire Line
	14250 5875 14350 5975
Text Label 14725 5975 2    60   ~ 0
A10
Text Label 14725 5875 2    60   ~ 0
A11
Text Label 14725 5775 2    60   ~ 0
A12
Text Label 14725 5675 2    60   ~ 0
A13
Text Label 14725 5575 2    60   ~ 0
A14
Text Label 14725 5475 2    60   ~ 0
A15
Text GLabel 14675 8975 0    60   Input ~ 0
K0_EXT
Text GLabel 14675 9075 0    60   Input ~ 0
K7_EXT
$Comp
L C C1
U 1 1 5D7B9184
P 10000 10525
F 0 "C1" H 10025 10625 50  0000 L CNN
F 1 "100nF" H 10025 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10038 10375 50  0001 C CNN
F 3 "" H 10000 10525 50  0001 C CNN
	1    10000 10525
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5D7B9185
P 11450 10825
F 0 "#PWR03" H 11450 10575 50  0001 C CNN
F 1 "GND" H 11450 10675 50  0000 C CNN
F 2 "" H 11450 10825 50  0001 C CNN
F 3 "" H 11450 10825 50  0001 C CNN
	1    11450 10825
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5D7B9186
P 10000 10225
F 0 "#PWR04" H 10000 10075 50  0001 C CNN
F 1 "VCC" H 10000 10375 50  0000 C CNN
F 2 "" H 10000 10225 50  0001 C CNN
F 3 "" H 10000 10225 50  0001 C CNN
	1    10000 10225
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5D7B9187
P 10300 10525
F 0 "C2" H 10325 10625 50  0000 L CNN
F 1 "100nF" H 10325 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10338 10375 50  0001 C CNN
F 3 "" H 10300 10525 50  0001 C CNN
	1    10300 10525
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5D7B9188
P 10600 10525
F 0 "C3" H 10625 10625 50  0000 L CNN
F 1 "100nF" H 10625 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10638 10375 50  0001 C CNN
F 3 "" H 10600 10525 50  0001 C CNN
	1    10600 10525
	-1   0    0    -1  
$EndComp
Text Notes 12175 10925 0    60   ~ 0
RC-ONE 65K Expansion
Text Notes 11825 10450 0    60   ~ 0
The original KIM-1 only decoded what in the documentation is called the first 8KB of\nmemory space, it is however repeated in all 8KB blocks on the system. If we want to use\nthe other 56K then we need to replace the adressing logic used, this module does that as\nwell as allow the user access to some of the unused RAM/ROM already on the CPU board\nof the RC-ONE. Optional secondary 6532 connected to IO3.
NoConn ~ 14750 9275
Text GLabel 14675 8875 0    60   Input ~ 0
DEN
NoConn ~ 14750 7475
NoConn ~ 14750 7675
NoConn ~ 14750 7875
NoConn ~ 14750 7975
Text GLabel 7850 5450 2    60   Output ~ 0
K0_EXT
$Comp
L 74LS138 U1
U 1 1 5D7C1540
P 2075 1450
F 0 "U1" H 2075 1450 50  0000 C CNN
F 1 "74LS138" H 2075 950 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 2075 1450 50  0001 C CNN
F 3 "" H 2075 1450 50  0001 C CNN
	1    2075 1450
	1    0    0    -1  
$EndComp
Text Label 1100 1300 0    60   ~ 0
A15
Text Label 1100 1100 0    60   ~ 0
A13
Text Label 1100 1200 0    60   ~ 0
A14
$Comp
L VCC #PWR05
U 1 1 5D7CA683
P 1400 1525
F 0 "#PWR05" H 1400 1375 50  0001 C CNN
F 1 "VCC" H 1400 1675 50  0000 C CNN
F 2 "" H 1400 1525 50  0001 C CNN
F 3 "" H 1400 1525 50  0001 C CNN
	1    1400 1525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5D7CAC78
P 1400 1875
F 0 "#PWR06" H 1400 1625 50  0001 C CNN
F 1 "GND" H 1400 1725 50  0000 C CNN
F 2 "" H 1400 1875 50  0001 C CNN
F 3 "" H 1400 1875 50  0001 C CNN
	1    1400 1875
	1    0    0    -1  
$EndComp
Text Label 2700 1100 0    60   ~ 0
8K0
Text Label 2700 1200 0    60   ~ 0
8K1
Text Label 2700 1300 0    60   ~ 0
8K2
Text Label 2700 1400 0    60   ~ 0
8K3
Text Label 2700 1800 0    60   ~ 0
8K7
Entry Wire Line
	975  1400 1075 1300
Entry Wire Line
	975  1300 1075 1200
Entry Wire Line
	975  1200 1075 1100
Text Notes 2950 1800 0    60   ~ 0
$E000
Text Notes 2950 1100 0    60   ~ 0
$0000
Text Notes 2950 1200 0    60   ~ 0
$2000
Text Notes 2950 1300 0    60   ~ 0
$4000
Text Notes 2950 1400 0    60   ~ 0
$6000
Text Notes 2950 1500 0    60   ~ 0
$8000
Text Notes 2950 1600 0    60   ~ 0
$A000
Text Notes 2950 1700 0    60   ~ 0
$C000
Text Notes 7625 5625 0    60   ~ 0
RAM SELECT LOGIC
Text Label 4250 2425 0    60   ~ 0
A10
Text Label 4250 2525 0    60   ~ 0
A11
Text Label 4250 2625 0    60   ~ 0
A12
Entry Wire Line
	4125 2325 4225 2425
Entry Wire Line
	4125 2425 4225 2525
Entry Wire Line
	4125 2525 4225 2625
Text Notes 6000 2425 0    60   ~ 0
$0000
Text Notes 6000 2525 0    60   ~ 0
$0400
Text Notes 6000 2625 0    60   ~ 0
$0800
Text Notes 6000 2725 0    60   ~ 0
$0C00
Text Notes 6000 2825 0    60   ~ 0
$1000
Text Notes 6000 2925 0    60   ~ 0
$1400
Text Notes 6000 3025 0    60   ~ 0
$1800
Text Notes 6000 3125 0    60   ~ 0
$1C00
Text Label 5850 2425 0    60   ~ 0
K0
Text Label 5850 2525 0    60   ~ 0
K1
Text Label 5850 2625 0    60   ~ 0
K2
Text Label 5850 2725 0    60   ~ 0
K3
Text Label 5850 3025 0    60   ~ 0
K6
Text Label 5850 3125 0    60   ~ 0
K7
Text Label 4250 3025 0    60   ~ 0
8K0
Entry Wire Line
	4125 3125 4225 3025
$Comp
L 74LS08 U3
U 1 1 5D7DF915
P 5450 5100
F 0 "U3" H 5450 5150 50  0000 C CNN
F 1 "74LS08" H 5450 5050 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5450 5100 50  0001 C CNN
F 3 "" H 5450 5100 50  0001 C CNN
	1    5450 5100
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U3
U 3 1 5D7DF99A
P 5825 5800
F 0 "U3" H 5825 5850 50  0000 C CNN
F 1 "74LS08" H 5825 5750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5825 5800 50  0001 C CNN
F 3 "" H 5825 5800 50  0001 C CNN
	3    5825 5800
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U3
U 4 1 5D7DFA15
P 7175 5450
F 0 "U3" H 7175 5500 50  0000 C CNN
F 1 "74LS08" H 7175 5400 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7175 5450 50  0001 C CNN
F 3 "" H 7175 5450 50  0001 C CNN
	4    7175 5450
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U3
U 2 1 5D7DFB25
P 6575 4075
F 0 "U3" H 6575 4125 50  0000 C CNN
F 1 "74LS08" H 6575 4025 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6575 4075 50  0001 C CNN
F 3 "" H 6575 4075 50  0001 C CNN
	2    6575 4075
	1    0    0    -1  
$EndComp
Text GLabel 4775 5000 0    60   Input ~ 0
~LOW_RAM
$Comp
L Jumper_NC_Dual JP1
U 1 1 5D7E059F
P 4750 5400
F 0 "JP1" H 4800 5300 50  0000 L CNN
F 1 "8K1_RAM" H 4750 5500 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 5400 50  0001 C CNN
F 3 "" H 4750 5400 50  0001 C CNN
	1    4750 5400
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR07
U 1 1 5D7E0882
P 5000 5400
F 0 "#PWR07" H 5000 5250 50  0001 C CNN
F 1 "VCC" H 5000 5550 50  0000 C CNN
F 2 "" H 5000 5400 50  0001 C CNN
F 3 "" H 5000 5400 50  0001 C CNN
	1    5000 5400
	1    0    0    -1  
$EndComp
Text Label 4300 5400 0    60   ~ 0
8K1
Text Label 4250 6100 0    60   ~ 0
8K2
Text Label 4250 6375 0    60   ~ 0
8K3
$Comp
L Jumper_NC_Dual JP2
U 1 1 5D7E2572
P 4750 6100
F 0 "JP2" H 4800 6000 50  0000 L CNN
F 1 "8K2_RAM" H 4750 6200 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 6100 50  0001 C CNN
F 3 "" H 4750 6100 50  0001 C CNN
	1    4750 6100
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR08
U 1 1 5D7E2578
P 5000 6100
F 0 "#PWR08" H 5000 5950 50  0001 C CNN
F 1 "VCC" H 5000 6250 50  0000 C CNN
F 2 "" H 5000 6100 50  0001 C CNN
F 3 "" H 5000 6100 50  0001 C CNN
	1    5000 6100
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP4
U 1 1 5D7E2913
P 5125 6375
F 0 "JP4" H 5175 6275 50  0000 L CNN
F 1 "8K3_RAM" H 5125 6475 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5125 6375 50  0001 C CNN
F 3 "" H 5125 6375 50  0001 C CNN
	1    5125 6375
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR09
U 1 1 5D7E2919
P 5375 6375
F 0 "#PWR09" H 5375 6225 50  0001 C CNN
F 1 "VCC" H 5375 6525 50  0000 C CNN
F 2 "" H 5375 6375 50  0001 C CNN
F 3 "" H 5375 6375 50  0001 C CNN
	1    5375 6375
	1    0    0    -1  
$EndComp
Text Label 4250 4300 0    60   ~ 0
8K7
Text GLabel 7250 4075 2    60   Output ~ 0
K7_EXT
Entry Wire Line
	4125 5300 4225 5400
Entry Wire Line
	4125 6000 4225 6100
Entry Wire Line
	4125 6275 4225 6375
Entry Wire Line
	4125 4400 4225 4300
Entry Wire Line
	3375 1100 3475 1200
Entry Wire Line
	3375 1200 3475 1300
Entry Wire Line
	3375 1300 3475 1400
Entry Wire Line
	3375 1400 3475 1500
Entry Wire Line
	3375 1800 3475 1900
NoConn ~ 14750 6075
NoConn ~ 14750 6175
NoConn ~ 14750 6275
Text GLabel 3475 875  2    60   Output ~ 0
DEN
$Comp
L R6532 U4
U 1 1 5D7E1067
P 2550 8350
F 0 "U4" H 2550 7200 60  0000 C CNN
F 1 "R6532" V 2550 8250 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2050 8550 60  0001 C CNN
F 3 "" H 2050 8550 60  0000 C CNN
	1    2550 8350
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5D7E1F0F
P 10900 10525
F 0 "C4" H 10925 10625 50  0000 L CNN
F 1 "100nF" H 10925 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10938 10375 50  0001 C CNN
F 3 "" H 10900 10525 50  0001 C CNN
	1    10900 10525
	-1   0    0    -1  
$EndComp
Text Label 3225 9050 0    60   ~ 0
PB0
Text Label 3225 9150 0    60   ~ 0
PB1
Text Label 3225 9250 0    60   ~ 0
PB2
Text Label 3225 9350 0    60   ~ 0
PB3
Text Label 1875 9250 2    60   ~ 0
PB4
Text Label 1875 9150 2    60   ~ 0
PB5
Text Label 1875 9050 2    60   ~ 0
PB6
Text Label 1875 8950 2    60   ~ 0
PB7
Text Label 1875 8150 2    60   ~ 0
PA0
Text Label 1875 8250 2    60   ~ 0
PA1
Text Label 1875 8350 2    60   ~ 0
PA2
Text Label 1875 8450 2    60   ~ 0
PA3
Text Label 1875 8550 2    60   ~ 0
PA4
Text Label 1875 8650 2    60   ~ 0
PA5
Text Label 1875 8750 2    60   ~ 0
PA6
Text Label 1875 8850 2    60   ~ 0
PA7
$Comp
L VCC #PWR010
U 1 1 5D7E2998
P 1725 9500
F 0 "#PWR010" H 1725 9350 50  0001 C CNN
F 1 "VCC" H 1725 9650 50  0000 C CNN
F 2 "" H 1725 9500 50  0001 C CNN
F 3 "" H 1725 9500 50  0001 C CNN
	1    1725 9500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5D7E2F18
P 1725 7300
F 0 "#PWR011" H 1725 7050 50  0001 C CNN
F 1 "GND" H 1725 7150 50  0000 C CNN
F 2 "" H 1725 7300 50  0001 C CNN
F 3 "" H 1725 7300 50  0001 C CNN
	1    1725 7300
	1    0    0    -1  
$EndComp
Text Label 3225 8050 0    60   ~ 0
~RESET
Text Label 3225 7950 0    60   ~ 0
R/~W
Text Label 3225 7550 0    60   ~ 0
PHI2
Text Label 1875 8050 2    60   ~ 0
A0
Text Label 1875 7950 2    60   ~ 0
A1
Text Label 1875 7850 2    60   ~ 0
A2
Text Label 1875 7750 2    60   ~ 0
A3
Text Label 1875 7550 2    60   ~ 0
A5
Text Label 3225 8150 0    60   ~ 0
D0
Text Label 3225 8250 0    60   ~ 0
D1
Text Label 3225 8350 0    60   ~ 0
D2
Text Label 3225 8450 0    60   ~ 0
D3
Text Label 3225 8550 0    60   ~ 0
D4
Text Label 3225 8650 0    60   ~ 0
D5
Text Label 3225 8750 0    60   ~ 0
D6
Text Label 3225 8850 0    60   ~ 0
D7
Text Label 14125 7575 2    60   ~ 0
~IRQ_IN
Text GLabel 3300 8900 2    60   Input ~ 0
~IRQ
Text GLabel 13325 7750 0    60   Output ~ 0
~IRQ
Entry Wire Line
	3650 8150 3750 8050
Entry Wire Line
	3650 8050 3750 7950
Entry Wire Line
	3650 7950 3750 7850
Entry Wire Line
	3650 8450 3750 8350
Entry Wire Line
	3650 8350 3750 8250
Entry Wire Line
	3650 8250 3750 8150
Entry Wire Line
	3650 8550 3750 8450
Entry Wire Line
	3650 8850 3750 8750
Entry Wire Line
	3650 8750 3750 8650
Entry Wire Line
	3650 8650 3750 8550
Entry Wire Line
	3650 7550 3750 7450
Entry Wire Line
	1350 7750 1450 7850
Entry Wire Line
	1350 7850 1450 7950
Entry Wire Line
	1350 7950 1450 8050
Entry Wire Line
	1350 7450 1450 7550
Entry Wire Line
	1350 7650 1450 7750
Entry Wire Line
	1350 8450 1450 8350
Entry Wire Line
	1350 8350 1450 8250
Entry Wire Line
	1350 8250 1450 8150
Entry Wire Line
	1350 8750 1450 8650
Entry Wire Line
	1350 8650 1450 8550
Entry Wire Line
	1350 8550 1450 8450
Entry Wire Line
	1350 8850 1450 8750
Entry Wire Line
	1350 9150 1450 9050
Entry Wire Line
	1350 9050 1450 8950
Entry Wire Line
	1350 8950 1450 8850
Entry Wire Line
	1350 9350 1450 9250
Entry Wire Line
	1350 9250 1450 9150
Entry Wire Line
	3650 9250 3750 9350
Entry Wire Line
	3650 9350 3750 9450
Entry Wire Line
	3650 9050 3750 9150
Entry Wire Line
	3650 9150 3750 9250
$Comp
L VCC #PWR012
U 1 1 5D7E82A4
P 3925 7325
F 0 "#PWR012" H 3925 7175 50  0001 C CNN
F 1 "VCC" H 3925 7475 50  0000 C CNN
F 2 "" H 3925 7325 50  0001 C CNN
F 3 "" H 3925 7325 50  0001 C CNN
	1    3925 7325
	1    0    0    -1  
$EndComp
Text Label 14725 6975 2    60   ~ 0
A0
Text Label 14725 6875 2    60   ~ 0
A1
Text Label 14725 6775 2    60   ~ 0
A2
Text Label 14725 6675 2    60   ~ 0
A3
Text Label 14725 6575 2    60   ~ 0
A4
Text Label 14725 6475 2    60   ~ 0
A5
Text Label 14725 8075 2    60   ~ 0
D0
Text Label 14725 8175 2    60   ~ 0
D1
Text Label 14725 8275 2    60   ~ 0
D2
Text Label 14725 8375 2    60   ~ 0
D3
Text Label 14725 8475 2    60   ~ 0
D4
Text Label 14725 8575 2    60   ~ 0
D5
Text Label 14725 8675 2    60   ~ 0
D6
Text Label 14725 8775 2    60   ~ 0
D7
Text Label 14725 7775 2    60   ~ 0
R/~W
Text Label 14725 7375 2    60   ~ 0
~RESET
Text Label 14725 7275 2    60   ~ 0
PHI2
Text Label 14725 7575 2    60   ~ 0
~IRQ_IN
Entry Wire Line
	14250 6375 14350 6475
Entry Wire Line
	14250 6475 14350 6575
Entry Wire Line
	14250 6575 14350 6675
Entry Wire Line
	14250 6675 14350 6775
Entry Wire Line
	14250 6775 14350 6875
Entry Wire Line
	14250 6875 14350 6975
Entry Wire Line
	14250 8075 14350 8175
Entry Wire Line
	14250 8175 14350 8275
Entry Wire Line
	14250 8275 14350 8375
Entry Wire Line
	14250 8375 14350 8475
Entry Wire Line
	14250 8475 14350 8575
Entry Wire Line
	14250 8575 14350 8675
Entry Wire Line
	14250 8675 14350 8775
Entry Wire Line
	14250 7975 14350 8075
Entry Wire Line
	14250 7675 14350 7775
Entry Wire Line
	14250 7475 14350 7575
Entry Wire Line
	14250 7275 14350 7375
Entry Wire Line
	14250 7175 14350 7275
Text GLabel 13675 9350 0    60   Output ~ 0
IO3
Text GLabel 3300 7700 2    60   Input ~ 0
IO3
Entry Wire Line
	14150 7575 14250 7475
$Comp
L Jumper_NC_Dual JP6
U 1 1 5D7EE436
P 13925 9175
F 0 "JP6" H 13750 9075 50  0000 L CNN
F 1 "6532_EN" H 13925 9275 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 13925 9175 50  0001 C CNN
F 3 "" H 13925 9175 50  0001 C CNN
	1    13925 9175
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 5D7EECAC
P 13600 9100
F 0 "#PWR013" H 13600 8950 50  0001 C CNN
F 1 "VCC" H 13600 9250 50  0000 C CNN
F 2 "" H 13600 9100 50  0001 C CNN
F 3 "" H 13600 9100 50  0001 C CNN
	1    13600 9100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5D7EF897
P 5200 9300
F 0 "#PWR014" H 5200 9050 50  0001 C CNN
F 1 "GND" H 5200 9150 50  0000 C CNN
F 2 "" H 5200 9300 50  0001 C CNN
F 3 "" H 5200 9300 50  0001 C CNN
	1    5200 9300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5D7EFBD5
P 6000 9300
F 0 "#PWR015" H 6000 9050 50  0001 C CNN
F 1 "GND" H 6000 9150 50  0000 C CNN
F 2 "" H 6000 9300 50  0001 C CNN
F 3 "" H 6000 9300 50  0001 C CNN
	1    6000 9300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5D7EFFDC
P 6000 8300
F 0 "#PWR016" H 6000 8050 50  0001 C CNN
F 1 "GND" H 6000 8150 50  0000 C CNN
F 2 "" H 6000 8300 50  0001 C CNN
F 3 "" H 6000 8300 50  0001 C CNN
	1    6000 8300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 5D7F0292
P 5275 8375
F 0 "#PWR017" H 5275 8225 50  0001 C CNN
F 1 "VCC" H 5275 8525 50  0000 C CNN
F 2 "" H 5275 8375 50  0001 C CNN
F 3 "" H 5275 8375 50  0001 C CNN
	1    5275 8375
	1    0    0    -1  
$EndComp
Text Label 6275 8550 2    60   ~ 0
PB0
Text Label 6275 8650 2    60   ~ 0
PB1
Text Label 6275 8750 2    60   ~ 0
PB2
Text Label 6275 8850 2    60   ~ 0
PB3
Text Label 6275 8950 2    60   ~ 0
PB4
Text Label 6275 9050 2    60   ~ 0
PB5
Text Label 6275 9150 2    60   ~ 0
PB6
Text Label 6275 9250 2    60   ~ 0
PB7
Text Label 4925 8550 0    60   ~ 0
PA0
Text Label 4925 8650 0    60   ~ 0
PA1
Text Label 4925 8750 0    60   ~ 0
PA2
Text Label 4925 8850 0    60   ~ 0
PA3
Text Label 4925 8950 0    60   ~ 0
PA4
Text Label 4925 9050 0    60   ~ 0
PA5
Text Label 4925 9150 0    60   ~ 0
PA6
Text Label 4925 9250 0    60   ~ 0
PA7
$Comp
L Conn_02x10_Odd_Even J2
U 1 1 5D7F0E7C
P 5650 8950
F 0 "J2" H 5700 9450 50  0000 C CNN
F 1 "External IO" H 5700 8350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10_Pitch2.54mm" H 5650 8950 50  0001 C CNN
F 3 "" H 5650 8950 50  0001 C CNN
	1    5650 8950
	-1   0    0    1   
$EndComp
Entry Wire Line
	4900 9050 4800 9150
Entry Wire Line
	4900 9150 4800 9250
Entry Wire Line
	4900 9250 4800 9350
Entry Wire Line
	4900 8750 4800 8850
Entry Wire Line
	4900 8850 4800 8950
Entry Wire Line
	4900 8950 4800 9050
Entry Wire Line
	4900 8650 4800 8750
Entry Wire Line
	4900 8550 4800 8650
Entry Wire Line
	6300 9050 6400 9150
Entry Wire Line
	6300 9150 6400 9250
Entry Wire Line
	6300 9250 6400 9350
Entry Wire Line
	6300 8750 6400 8850
Entry Wire Line
	6300 8850 6400 8950
Entry Wire Line
	6300 8950 6400 9050
Entry Wire Line
	6300 8650 6400 8750
Entry Wire Line
	6300 8550 6400 8650
$Comp
L Jumper_NC_Dual JP5
U 1 1 5D7F36E7
P 13575 7575
F 0 "JP5" H 13400 7475 50  0000 L CNN
F 1 "IRQ_EN" H 13575 7675 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 13575 7575 50  0001 C CNN
F 3 "" H 13575 7575 50  0001 C CNN
	1    13575 7575
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 5D7F3BBE
P 13250 7500
F 0 "#PWR018" H 13250 7350 50  0001 C CNN
F 1 "VCC" H 13250 7650 50  0000 C CNN
F 2 "" H 13250 7500 50  0001 C CNN
F 3 "" H 13250 7500 50  0001 C CNN
	1    13250 7500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5D7F8A01
P 2475 2425
F 0 "J3" H 2475 2625 50  0000 C CNN
F 1 "Extra" H 2475 2225 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2475 2425 50  0001 C CNN
F 3 "" H 2475 2425 50  0001 C CNN
	1    2475 2425
	-1   0    0    -1  
$EndComp
Text Label 2700 1500 0    60   ~ 0
8K4
Text Label 2700 1600 0    60   ~ 0
8K5
Text Label 2700 1700 0    60   ~ 0
8K6
Entry Wire Line
	3375 1500 3475 1600
Entry Wire Line
	3375 1600 3475 1700
Entry Wire Line
	3375 1700 3475 1800
Text Label 2700 2325 0    60   ~ 0
8K4
Text Label 2700 2425 0    60   ~ 0
8K5
Text Label 2700 2525 0    60   ~ 0
8K6
Entry Wire Line
	3375 2525 3475 2625
Entry Wire Line
	3375 2325 3475 2425
Entry Wire Line
	3375 2425 3475 2525
$Comp
L 74LS138 U2
U 1 1 5D93BB04
P 5225 2775
F 0 "U2" H 5225 2775 50  0000 C CNN
F 1 "74LS138" H 5225 2275 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5225 2775 50  0001 C CNN
F 3 "" H 5225 2775 50  0001 C CNN
	1    5225 2775
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 5D93D1A3
P 4550 2850
F 0 "#PWR019" H 4550 2700 50  0001 C CNN
F 1 "VCC" H 4550 3000 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5D93D329
P 4550 3200
F 0 "#PWR020" H 4550 2950 50  0001 C CNN
F 1 "GND" H 4550 3050 50  0000 C CNN
F 2 "" H 4550 3200 50  0001 C CNN
F 3 "" H 4550 3200 50  0001 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
NoConn ~ 5825 2925
$Comp
L 74LS08 U5
U 1 1 5D93E7B9
P 5225 3850
F 0 "U5" H 5225 3900 50  0000 C CNN
F 1 "74LS08" H 5225 3800 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5225 3850 50  0001 C CNN
F 3 "" H 5225 3850 50  0001 C CNN
	1    5225 3850
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U5
U 2 1 5D93E823
P 7275 1225
F 0 "U5" H 7275 1275 50  0000 C CNN
F 1 "74LS08" H 7275 1175 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7275 1225 50  0001 C CNN
F 3 "" H 7275 1225 50  0001 C CNN
	2    7275 1225
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U5
U 3 1 5D93E88A
P 8625 1450
F 0 "U5" H 8625 1500 50  0000 C CNN
F 1 "74LS08" H 8625 1400 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8625 1450 50  0001 C CNN
F 3 "" H 8625 1450 50  0001 C CNN
	3    8625 1450
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U5
U 4 1 5D93E900
P 7275 1675
F 0 "U5" H 7275 1725 50  0000 C CNN
F 1 "74LS08" H 7275 1625 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7275 1675 50  0001 C CNN
F 3 "" H 7275 1675 50  0001 C CNN
	4    7275 1675
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J5
U 1 1 5D96B66A
P 9700 1100
F 0 "J5" H 9750 1300 50  0000 C CNN
F 1 "RAM_SEL" H 9750 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 9700 1100 50  0001 C CNN
F 3 "" H 9700 1100 50  0001 C CNN
	1    9700 1100
	1    0    0    -1  
$EndComp
Text GLabel 10150 1000 2    60   Output ~ 0
~LOW_RAM
Text Notes 7025 4250 0    60   ~ 0
ROM SELECT LOGIC
Text Notes 10150 1550 0    60   ~ 0
Low memory size:\n1-2\n3-4\n5-6\n7-8
Text Notes 10375 1550 0    60   ~ 0
1K\n2K\n4K\n5K
Text Notes 6500 3500 0    60   ~ 0
Original 2K ROM area is mirrored\nwithin original memory map, this\nis done to ensure compatibility\nwith existing software for\nun-expanded systems.
$Comp
L Conn_01x04 J4
U 1 1 5D9746FB
P 6975 2625
F 0 "J4" H 6975 2825 50  0000 C CNN
F 1 "K1-K4" H 6975 2325 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6975 2625 50  0001 C CNN
F 3 "" H 6975 2625 50  0001 C CNN
	1    6975 2625
	1    0    0    -1  
$EndComp
Text Label 5850 2825 0    60   ~ 0
K4
$Comp
L 74LS00 U6
U 1 1 5D97660C
P 2525 7050
F 0 "U6" H 2525 7100 50  0000 C CNN
F 1 "74LS00" H 2525 6950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2525 7050 50  0001 C CNN
F 3 "" H 2525 7050 50  0001 C CNN
	1    2525 7050
	-1   0    0    1   
$EndComp
$Comp
L 74LS00 U6
U 2 1 5D976679
P 7375 2225
F 0 "U6" H 7375 2275 50  0000 C CNN
F 1 "74LS00" H 7375 2125 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7375 2225 50  0001 C CNN
F 3 "" H 7375 2225 50  0001 C CNN
	2    7375 2225
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 3 1 5D9766F0
P 8725 2225
F 0 "U6" H 8725 2275 50  0000 C CNN
F 1 "74LS00" H 8725 2125 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8725 2225 50  0001 C CNN
F 3 "" H 8725 2225 50  0001 C CNN
	3    8725 2225
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 4 1 5D976762
P 9325 10075
F 0 "U6" H 9325 10125 50  0000 C CNN
F 1 "74LS00" H 9325 9975 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 9325 10075 50  0001 C CNN
F 3 "" H 9325 10075 50  0001 C CNN
	4    9325 10075
	0    -1   -1   0   
$EndComp
Text Label 3625 7050 2    60   ~ 0
A4
Entry Wire Line
	3650 7050 3750 6950
$Comp
L Jumper_NC_Dual JP3
U 1 1 5D97ED4E
P 1275 7050
F 0 "JP3" H 1325 6950 50  0000 L CNN
F 1 "A4_INV" H 1275 7150 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1275 7050 50  0001 C CNN
F 3 "" H 1275 7050 50  0001 C CNN
	1    1275 7050
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5D9801F0
P 11175 10525
F 0 "C5" H 11200 10625 50  0000 L CNN
F 1 "100nF" H 11200 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11213 10375 50  0001 C CNN
F 3 "" H 11175 10525 50  0001 C CNN
	1    11175 10525
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5D980267
P 11450 10525
F 0 "C6" H 11475 10625 50  0000 L CNN
F 1 "100nF" H 11475 10425 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11488 10375 50  0001 C CNN
F 3 "" H 11450 10525 50  0001 C CNN
	1    11450 10525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14150 7150 14150 6975
Wire Wire Line
	14350 5475 14750 5475
Wire Wire Line
	14350 5575 14750 5575
Wire Wire Line
	14350 5675 14750 5675
Wire Wire Line
	14350 5775 14750 5775
Wire Wire Line
	14350 5875 14750 5875
Wire Wire Line
	14350 5975 14750 5975
Wire Bus Line
	14250 600  14250 8675
Wire Wire Line
	14675 8975 14750 8975
Wire Wire Line
	14675 9075 14750 9075
Wire Wire Line
	10000 10750 10000 10675
Wire Wire Line
	10300 10675 10300 10750
Connection ~ 10300 10750
Wire Wire Line
	10600 10750 10600 10675
Connection ~ 10600 10750
Wire Wire Line
	10000 10225 10000 10375
Wire Wire Line
	10300 10375 10300 10300
Connection ~ 10300 10300
Wire Wire Line
	10600 10300 10600 10375
Connection ~ 10600 10300
Connection ~ 10000 10300
Wire Wire Line
	14675 8875 14750 8875
Wire Wire Line
	1075 1300 1475 1300
Wire Wire Line
	1075 1100 1475 1100
Wire Wire Line
	1075 1200 1475 1200
Wire Wire Line
	1400 1525 1400 1600
Wire Wire Line
	1400 1600 1475 1600
Wire Wire Line
	1475 1700 1400 1700
Wire Wire Line
	1400 1700 1400 1875
Wire Wire Line
	1400 1800 1475 1800
Connection ~ 1400 1800
Wire Wire Line
	4225 2425 4625 2425
Wire Wire Line
	4225 2525 4625 2525
Wire Wire Line
	4225 2625 4625 2625
Wire Wire Line
	4225 3025 4625 3025
Wire Wire Line
	4750 5300 4750 5200
Wire Wire Line
	4750 5200 4850 5200
Wire Wire Line
	4775 5000 4850 5000
Wire Wire Line
	4500 5400 4225 5400
Wire Wire Line
	4500 6100 4225 6100
Wire Wire Line
	4225 6375 4875 6375
Wire Wire Line
	5125 6275 5125 5900
Wire Wire Line
	5125 5900 5225 5900
Wire Wire Line
	4750 6000 4750 5700
Wire Wire Line
	4750 5700 5225 5700
Wire Wire Line
	6425 5800 6500 5800
Wire Wire Line
	6500 5800 6500 5550
Wire Wire Line
	6500 5550 6575 5550
Wire Wire Line
	6575 5350 6500 5350
Wire Wire Line
	6500 5350 6500 5100
Wire Wire Line
	6500 5100 6050 5100
Wire Wire Line
	7850 5450 7775 5450
Wire Wire Line
	7175 4075 7250 4075
Wire Wire Line
	2675 1100 3375 1100
Wire Wire Line
	2675 1200 3375 1200
Wire Wire Line
	2675 1300 3375 1300
Wire Wire Line
	2675 1400 3375 1400
Wire Wire Line
	2675 1800 3375 1800
Wire Bus Line
	4125 3125 4125 6275
Wire Bus Line
	825  600  825  7700
Wire Bus Line
	3475 1200 3475 2625
Wire Bus Line
	825  600  14250 600 
Wire Wire Line
	10000 10750 11450 10750
Wire Wire Line
	10000 10300 11450 10300
Wire Wire Line
	3475 875  3300 875 
Wire Wire Line
	3300 875  3300 1100
Connection ~ 3300 1100
Wire Wire Line
	14175 9175 14750 9175
Wire Wire Line
	10900 10300 10900 10375
Wire Wire Line
	10900 10675 10900 10750
Connection ~ 10900 10750
Wire Wire Line
	1900 9350 1825 9350
Wire Wire Line
	1825 9350 1825 9500
Wire Wire Line
	1825 9500 1725 9500
Wire Wire Line
	1825 7450 1900 7450
Wire Wire Line
	1825 7225 1825 7450
Wire Wire Line
	1825 7225 1725 7225
Wire Wire Line
	1725 7225 1725 7300
Wire Wire Line
	1900 8150 1450 8150
Wire Wire Line
	1900 8050 1450 8050
Wire Wire Line
	1900 7950 1450 7950
Wire Wire Line
	1900 7850 1450 7850
Wire Wire Line
	1900 8550 1450 8550
Wire Wire Line
	1900 8450 1450 8450
Wire Wire Line
	1900 8350 1450 8350
Wire Wire Line
	1900 8250 1450 8250
Wire Wire Line
	1900 7750 1450 7750
Wire Wire Line
	1900 7550 1450 7550
Wire Wire Line
	1900 8850 1450 8850
Wire Wire Line
	1900 8750 1450 8750
Wire Wire Line
	1900 8650 1450 8650
Wire Wire Line
	1900 9250 1450 9250
Wire Wire Line
	1900 9150 1450 9150
Wire Wire Line
	1900 9050 1450 9050
Wire Wire Line
	1900 8950 1450 8950
Wire Wire Line
	13825 7575 14150 7575
Wire Wire Line
	3650 9050 3200 9050
Wire Wire Line
	3650 9150 3200 9150
Wire Wire Line
	3650 9250 3200 9250
Wire Wire Line
	3650 9350 3200 9350
Wire Wire Line
	3650 8550 3200 8550
Wire Wire Line
	3650 8650 3200 8650
Wire Wire Line
	3650 8750 3200 8750
Wire Wire Line
	3650 8850 3200 8850
Wire Wire Line
	3650 8150 3200 8150
Wire Wire Line
	3650 8250 3200 8250
Wire Wire Line
	3650 8350 3200 8350
Wire Wire Line
	3650 8450 3200 8450
Wire Wire Line
	3650 7950 3200 7950
Wire Wire Line
	3650 8050 3200 8050
Wire Wire Line
	3650 7550 3200 7550
Wire Wire Line
	3200 7850 3250 7850
Wire Wire Line
	3250 7850 3250 7800
Wire Wire Line
	3250 7800 3925 7800
Wire Wire Line
	3200 7750 3250 7750
Wire Wire Line
	3200 7650 3250 7650
Wire Wire Line
	3250 7650 3250 7600
Wire Wire Line
	3250 7600 3925 7600
Wire Wire Line
	3925 7800 3925 7325
Connection ~ 3925 7600
Wire Wire Line
	3200 8950 3250 8950
Wire Wire Line
	3250 8950 3250 8900
Wire Wire Line
	3250 8900 3300 8900
Wire Wire Line
	14350 6475 14750 6475
Wire Wire Line
	14350 6575 14750 6575
Wire Wire Line
	14350 6675 14750 6675
Wire Wire Line
	14350 6775 14750 6775
Wire Wire Line
	14350 6875 14750 6875
Wire Wire Line
	14350 6975 14750 6975
Wire Wire Line
	14350 8175 14750 8175
Wire Wire Line
	14350 8275 14750 8275
Wire Wire Line
	14350 8375 14750 8375
Wire Wire Line
	14350 8475 14750 8475
Wire Wire Line
	14350 8575 14750 8575
Wire Wire Line
	14350 8675 14750 8675
Wire Wire Line
	14350 8775 14750 8775
Wire Wire Line
	14350 8075 14750 8075
Wire Wire Line
	14350 7775 14750 7775
Wire Wire Line
	14350 7575 14750 7575
Wire Wire Line
	14350 7375 14750 7375
Wire Wire Line
	14350 7275 14750 7275
Wire Wire Line
	14750 7175 14700 7175
Wire Wire Line
	14750 7075 14700 7075
Wire Wire Line
	14700 7075 14700 7100
Wire Wire Line
	14700 7100 14100 7100
Wire Wire Line
	14700 7175 14700 7150
Wire Wire Line
	14700 7150 14150 7150
Wire Wire Line
	14100 7100 14100 7150
Wire Wire Line
	3250 7750 3250 7700
Wire Wire Line
	3250 7700 3300 7700
Wire Bus Line
	1350 8250 1350 9600
Wire Bus Line
	1350 9600 6400 9600
Wire Bus Line
	3750 9150 3750 9600
Wire Bus Line
	3750 6950 3750 8750
Wire Bus Line
	1350 7450 1350 7950
Wire Wire Line
	13675 9350 13925 9350
Wire Wire Line
	13925 9350 13925 9275
Wire Wire Line
	13675 9175 13600 9175
Wire Wire Line
	13600 9175 13600 9100
Wire Wire Line
	5350 9350 5300 9350
Wire Wire Line
	5300 9350 5300 9300
Wire Wire Line
	5300 9300 5200 9300
Wire Wire Line
	5850 9350 5900 9350
Wire Wire Line
	5900 9350 5900 9300
Wire Wire Line
	5900 9300 6000 9300
Wire Wire Line
	5275 8450 5350 8450
Wire Wire Line
	5900 8450 5850 8450
Wire Wire Line
	5900 8300 5900 8450
Wire Wire Line
	5275 8450 5275 8375
Wire Wire Line
	6300 8850 5850 8850
Wire Wire Line
	6300 8750 5850 8750
Wire Wire Line
	6300 8650 5850 8650
Wire Wire Line
	6300 8550 5850 8550
Wire Wire Line
	6300 9250 5850 9250
Wire Wire Line
	6300 9150 5850 9150
Wire Wire Line
	6300 9050 5850 9050
Wire Wire Line
	6300 8950 5850 8950
Wire Wire Line
	5350 8850 4900 8850
Wire Wire Line
	5350 8750 4900 8750
Wire Wire Line
	5350 8650 4900 8650
Wire Wire Line
	5350 8550 4900 8550
Wire Wire Line
	5350 9250 4900 9250
Wire Wire Line
	5350 9150 4900 9150
Wire Wire Line
	5350 9050 4900 9050
Wire Wire Line
	5350 8950 4900 8950
Wire Wire Line
	6000 8300 5900 8300
Wire Bus Line
	4800 8650 4800 9600
Wire Bus Line
	6400 9600 6400 8650
Wire Wire Line
	13325 7750 13575 7750
Wire Wire Line
	13575 7750 13575 7675
Wire Wire Line
	13325 7575 13250 7575
Wire Wire Line
	13250 7575 13250 7500
Wire Wire Line
	2675 1700 3375 1700
Wire Wire Line
	3375 1600 2675 1600
Wire Wire Line
	2675 1500 3375 1500
Wire Wire Line
	2675 2525 3375 2525
Wire Wire Line
	3375 2425 2675 2425
Wire Wire Line
	2675 2325 3375 2325
Wire Bus Line
	975  1200 975  1400
Wire Bus Line
	975  1300 825  1300
Wire Wire Line
	4550 2850 4550 2925
Wire Wire Line
	4550 2925 4625 2925
Wire Wire Line
	4550 3200 4550 3125
Wire Wire Line
	4550 3125 4625 3125
Wire Bus Line
	4050 600  4050 2425
Wire Wire Line
	5825 3025 6400 3025
Wire Wire Line
	5825 3125 6300 3125
Wire Wire Line
	6300 3125 6300 3425
Wire Wire Line
	6300 3425 4450 3425
Wire Wire Line
	4450 3425 4450 3950
Wire Wire Line
	4450 3950 4625 3950
Wire Wire Line
	6400 3025 6400 3525
Wire Wire Line
	6400 3525 4550 3525
Wire Wire Line
	4550 3525 4550 3750
Wire Wire Line
	4550 3750 4625 3750
Wire Wire Line
	6300 2425 5825 2425
Wire Wire Line
	6300 800  6300 2425
Wire Wire Line
	5825 2525 6775 2525
Wire Wire Line
	6400 1325 6400 2525
Wire Wire Line
	6500 1575 6675 1575
Wire Wire Line
	6500 1575 6500 2625
Wire Wire Line
	5825 2625 6775 2625
Wire Wire Line
	5825 2725 6775 2725
Wire Wire Line
	6600 1775 6600 2725
Wire Wire Line
	6600 1775 6675 1775
Wire Wire Line
	6300 1125 6675 1125
Wire Wire Line
	6400 1325 6675 1325
Wire Wire Line
	7950 1675 7875 1675
Wire Wire Line
	7950 1550 7950 1675
Wire Wire Line
	7875 1225 7950 1225
Wire Wire Line
	7950 1100 7950 1350
Wire Wire Line
	7950 1350 8025 1350
Wire Wire Line
	8025 1550 7950 1550
Wire Wire Line
	6300 800  9325 800 
Connection ~ 6300 1125
Wire Bus Line
	4125 4250 4125 4275
Wire Wire Line
	5825 3850 5900 3850
Wire Wire Line
	5900 3850 5900 3975
Wire Wire Line
	5900 3975 5975 3975
Wire Wire Line
	5975 4175 5900 4175
Wire Wire Line
	5900 4175 5900 4300
Wire Wire Line
	5900 4300 4225 4300
Wire Wire Line
	10000 1000 10150 1000
Wire Wire Line
	10075 1000 10075 1300
Wire Wire Line
	10075 1200 10000 1200
Wire Wire Line
	10000 1100 10075 1100
Connection ~ 10075 1100
Wire Wire Line
	7950 1100 9500 1100
Connection ~ 7950 1225
Wire Wire Line
	9325 1000 9500 1000
Wire Wire Line
	9325 800  9325 1000
Wire Wire Line
	9325 1200 9500 1200
Wire Wire Line
	9325 1200 9325 1975
Wire Wire Line
	9325 1450 9225 1450
Wire Bus Line
	3550 1800 3550 4450
Wire Bus Line
	3550 4450 4125 4450
Wire Bus Line
	3550 1800 3475 1800
Connection ~ 6400 2525
Connection ~ 6500 2625
Connection ~ 6600 2725
Wire Wire Line
	5825 2825 6775 2825
Wire Wire Line
	3200 7150 3125 7150
Wire Wire Line
	3200 6775 3200 7150
Wire Wire Line
	3200 6950 3125 6950
Wire Wire Line
	3200 7050 3650 7050
Connection ~ 3200 7050
Wire Wire Line
	3200 7450 3250 7450
Wire Wire Line
	3250 7450 3250 7400
Wire Wire Line
	3250 7400 3925 7400
Connection ~ 3925 7400
Wire Wire Line
	10075 1300 10000 1300
Connection ~ 10075 1200
Connection ~ 10075 1000
Wire Wire Line
	9500 1300 9425 1300
Wire Wire Line
	9425 1300 9425 2225
Wire Bus Line
	4125 2325 4125 2525
Wire Bus Line
	4050 2425 4125 2425
Wire Wire Line
	6700 2825 6700 2325
Connection ~ 6700 2825
Wire Wire Line
	9325 1975 6700 1975
Connection ~ 9325 1450
Wire Wire Line
	6700 2325 6775 2325
Wire Wire Line
	6700 1975 6700 2125
Wire Wire Line
	6700 2125 6775 2125
Wire Wire Line
	7975 2225 8050 2225
Wire Wire Line
	8050 2125 8050 2325
Wire Wire Line
	8050 2125 8125 2125
Wire Wire Line
	8050 2325 8125 2325
Connection ~ 8050 2225
Wire Wire Line
	9425 2225 9325 2225
Wire Wire Line
	1900 7650 1850 7650
Wire Wire Line
	1850 7650 1850 7600
Wire Wire Line
	1850 7600 1275 7600
Wire Wire Line
	1925 7050 1525 7050
Wire Wire Line
	1275 7600 1275 7150
Wire Wire Line
	1025 7050 950  7050
Wire Wire Line
	950  7050 950  6775
Wire Wire Line
	950  6775 3200 6775
Connection ~ 3200 6950
Wire Bus Line
	825  7700 1350 7700
Wire Wire Line
	11450 10300 11450 10375
Connection ~ 10900 10300
Wire Wire Line
	11175 10375 11175 10300
Connection ~ 11175 10300
Wire Wire Line
	11175 10750 11175 10675
Wire Wire Line
	11450 10675 11450 10825
Connection ~ 11175 10750
Connection ~ 11450 10750
Wire Wire Line
	9225 10675 9225 10750
Wire Wire Line
	9225 10750 9425 10750
Wire Wire Line
	9425 10750 9425 10675
Wire Wire Line
	9325 10750 9325 10825
Connection ~ 9325 10750
$Comp
L GND #PWR021
U 1 1 5D9818FB
P 9325 10825
F 0 "#PWR021" H 9325 10575 50  0001 C CNN
F 1 "GND" H 9325 10675 50  0000 C CNN
F 2 "" H 9325 10825 50  0001 C CNN
F 3 "" H 9325 10825 50  0001 C CNN
	1    9325 10825
	1    0    0    -1  
$EndComp
NoConn ~ 9325 9475
NoConn ~ 14750 6375
Text Notes 1375 10000 0    60   ~ 0
U4 is optional if the second 6532 for application\npurposes is not needed, U6 is also only needed\nfor 6532 or with 5K LOW RAM enabled.
$EndSCHEMATC
