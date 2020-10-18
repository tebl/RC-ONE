EESchema Schematic File Version 4
EELAYER 30 0
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
L RC1-CPU-rescue:BARREL_JACK J3
U 1 1 595DDBC9
P 15450 1050
F 0 "J3" H 15450 1245 50  0000 C CNN
F 1 "BARREL_JACK" H 15450 895 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 15450 1050 50  0001 C CNN
F 3 "" H 15450 1050 50  0001 C CNN
	1    15450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 595E10E8
P 15850 875
F 0 "#PWR01" H 15850 725 50  0001 C CNN
F 1 "VCC" H 15850 1025 50  0000 C CNN
F 2 "" H 15850 875 50  0001 C CNN
F 3 "" H 15850 875 50  0001 C CNN
	1    15850 875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 595E22B1
P 15850 1250
F 0 "#PWR02" H 15850 1000 50  0001 C CNN
F 1 "GND" H 15850 1100 50  0000 C CNN
F 2 "" H 15850 1250 50  0001 C CNN
F 3 "" H 15850 1250 50  0001 C CNN
	1    15850 1250
	1    0    0    -1  
$EndComp
$Comp
L rc1_ui_port:RC1_UI_Port J2
U 1 1 5D63F136
P 5950 9925
F 0 "J2" H 5950 10975 50  0000 C CNN
F 1 "RC1_UI_Port" V 5950 9925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5950 8975 50  0001 C CNN
F 3 "" H 5950 8975 50  0001 C CNN
	1    5950 9925
	-1   0    0    1   
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 5D63FD8B
P 15525 575
F 0 "M1" H 15525 675 50  0001 C CNN
F 1 "Mounting" H 15525 500 50  0001 C CNN
F 2 "mounting:1pin" H 15525 575 50  0001 C CNN
F 3 "" H 15525 575 50  0001 C CNN
	1    15525 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5D63FDB2
P 15650 575
F 0 "M2" H 15650 675 50  0001 C CNN
F 1 "Mounting" H 15650 500 50  0001 C CNN
F 2 "mounting:1pin" H 15650 575 50  0001 C CNN
F 3 "" H 15650 575 50  0001 C CNN
	1    15650 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5D63FDD2
P 15775 575
F 0 "M3" H 15775 675 50  0001 C CNN
F 1 "Mounting" H 15775 500 50  0001 C CNN
F 2 "mounting:1pin" H 15775 575 50  0001 C CNN
F 3 "" H 15775 575 50  0001 C CNN
	1    15775 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5D63FDF2
P 15900 575
F 0 "M4" H 15900 675 50  0001 C CNN
F 1 "Mounting" H 15900 500 50  0001 C CNN
F 2 "mounting:1pin" H 15900 575 50  0001 C CNN
F 3 "" H 15900 575 50  0001 C CNN
	1    15900 575 
	1    0    0    -1  
$EndComp
$Comp
L 6502:6502 U1
U 1 1 5D645977
P 2575 2450
F 0 "U1" H 2250 3500 60  0000 C CNN
F 1 "6502" V 2575 2350 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2075 2650 60  0001 C CNN
F 3 "" H 2075 2650 60  0000 C CNN
	1    2575 2450
	1    0    0    -1  
$EndComp
$Comp
L 65xx:R6532 U4
U 1 1 5D645978
P 2775 9875
F 0 "U4" H 2775 8775 60  0000 C CNN
F 1 "6532" V 2775 9775 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2275 10075 60  0001 C CNN
F 3 "" H 2275 10075 60  0000 C CNN
	1    2775 9875
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 2250 3950 2350
Entry Wire Line
	3850 2350 3950 2450
Entry Wire Line
	3850 2450 3950 2550
Entry Wire Line
	3850 2550 3950 2650
Entry Wire Line
	3850 2650 3950 2750
Entry Wire Line
	3850 2750 3950 2850
Entry Wire Line
	3850 2850 3950 2950
Entry Wire Line
	3850 2950 3950 3050
Entry Wire Line
	3850 3050 3950 3150
Entry Wire Line
	3850 3150 3950 3250
Entry Wire Line
	3850 3250 3950 3350
Entry Wire Line
	3850 3350 3950 3450
Entry Wire Line
	1350 2250 1450 2350
Entry Wire Line
	1350 2350 1450 2450
Entry Wire Line
	1350 2450 1450 2550
Entry Wire Line
	1350 2550 1450 2650
Entry Wire Line
	1350 2650 1450 2750
Entry Wire Line
	1350 2750 1450 2850
Entry Wire Line
	1350 2850 1450 2950
Entry Wire Line
	1350 2950 1450 3050
Entry Wire Line
	1350 3050 1450 3150
Entry Wire Line
	1350 3150 1450 3250
Entry Wire Line
	1350 3250 1450 3350
Entry Wire Line
	1350 3350 1450 3450
Text Label 3800 2250 2    60   ~ 0
D0
Text Label 3800 2350 2    60   ~ 0
D1
Text Label 3800 2450 2    60   ~ 0
D2
Text Label 3800 2550 2    60   ~ 0
D3
Text Label 3800 2650 2    60   ~ 0
D4
Text Label 3800 2750 2    60   ~ 0
D5
Text Label 3800 2850 2    60   ~ 0
D6
Text Label 3800 2950 2    60   ~ 0
D7
Text Label 3800 3050 2    60   ~ 0
A15
Text Label 3800 3150 2    60   ~ 0
A14
Text Label 3800 3250 2    60   ~ 0
A13
Text Label 3800 3350 2    60   ~ 0
A12
Text Label 1475 2350 0    60   ~ 0
A0
Text Label 1475 2450 0    60   ~ 0
A1
Text Label 1475 2550 0    60   ~ 0
A2
Text Label 1475 2650 0    60   ~ 0
A3
Text Label 1475 2750 0    60   ~ 0
A4
Text Label 1475 2850 0    60   ~ 0
A5
Text Label 1475 2950 0    60   ~ 0
A6
Text Label 1475 3050 0    60   ~ 0
A7
Text Label 1475 3150 0    60   ~ 0
A8
Text Label 1475 3250 0    60   ~ 0
A9
Text Label 1475 3350 0    60   ~ 0
A10
Text Label 1475 3450 0    60   ~ 0
A11
Entry Wire Line
	3850 1650 3950 1750
Text Label 3800 1650 2    60   ~ 0
PHI2
Entry Wire Line
	3850 1550 3950 1650
Text Label 3800 1550 2    60   ~ 0
~RESET
Entry Wire Line
	1350 1550 1450 1650
Text Label 1475 1650 0    60   ~ 0
~RDY
Entry Wire Line
	1350 1950 1450 2050
Text Label 1475 2050 0    60   ~ 0
~NMI
Entry Wire Line
	1350 1750 1450 1850
Text Label 1475 1850 0    60   ~ 0
~IRQ
Entry Wire Line
	1350 2050 1450 2150
Text Label 1475 2150 0    60   ~ 0
SYNC
Entry Wire Line
	3850 1850 3950 1950
Text Label 3800 1850 2    60   ~ 0
PHI0
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5D64597B
P 1800 1375
F 0 "JP1" H 1800 1455 50  0000 C CNN
F 1 "VP_GND" H 1775 1325 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1800 1375 50  0001 C CNN
F 3 "" H 1800 1375 50  0001 C CNN
	1    1800 1375
	0    1    -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D64597C
P 4975 2025
F 0 "R3" V 5055 2025 50  0000 C CNN
F 1 "3.3k" V 4975 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 2025 50  0001 C CNN
F 3 "" H 4975 2025 50  0001 C CNN
	1    4975 2025
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5D64597E
P 2525 1200
F 0 "#PWR03" H 2525 1050 50  0001 C CNN
F 1 "VCC" H 2525 1350 50  0000 C CNN
F 2 "" H 2525 1200 50  0001 C CNN
F 3 "" H 2525 1200 50  0001 C CNN
	1    2525 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D645982
P 2575 3650
F 0 "#PWR04" H 2575 3400 50  0001 C CNN
F 1 "GND" H 2575 3500 50  0000 C CNN
F 2 "" H 2575 3650 50  0001 C CNN
F 3 "" H 2575 3650 50  0001 C CNN
	1    2575 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D645983
P 2025 1275
F 0 "#PWR05" H 2025 1025 50  0001 C CNN
F 1 "GND" H 2025 1125 50  0000 C CNN
F 2 "" H 2025 1275 50  0001 C CNN
F 3 "" H 2025 1275 50  0001 C CNN
	1    2025 1275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D645985
P 6325 1775
F 0 "R6" V 6405 1775 50  0000 C CNN
F 1 "3k3" V 6325 1775 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6255 1775 50  0001 C CNN
F 3 "" H 6325 1775 50  0001 C CNN
	1    6325 1775
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5D645986
P 4975 1850
F 0 "R2" V 5055 1850 50  0000 C CNN
F 1 "3k3" V 4975 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 1850 50  0001 C CNN
F 3 "" H 4975 1850 50  0001 C CNN
	1    4975 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D645987
P 4975 1675
F 0 "R1" V 5055 1675 50  0000 C CNN
F 1 "3k3" V 4975 1675 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4905 1675 50  0001 C CNN
F 3 "" H 4975 1675 50  0001 C CNN
	1    4975 1675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D645988
P 6350 3100
F 0 "R7" V 6430 3100 50  0000 C CNN
F 1 "3k3" V 6350 3100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6280 3100 50  0001 C CNN
F 3 "" H 6350 3100 50  0001 C CNN
	1    6350 3100
	-1   0    0    1   
$EndComp
Entry Wire Line
	4425 1850 4325 1750
Entry Wire Line
	4425 1675 4325 1575
Text Label 4450 1675 0    60   ~ 0
~RDY
Text Label 4450 1850 0    60   ~ 0
~IRQ
$Comp
L power:VCC #PWR06
U 1 1 5D645989
P 5200 1600
F 0 "#PWR06" H 5200 1450 50  0001 C CNN
F 1 "VCC" H 5200 1750 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
$Comp
L Oscillators:ACO-xxxMHz X1
U 1 1 5D64598A
P 5200 2400
F 0 "X1" H 5000 2650 50  0000 L CNN
F 1 "1MHz" H 5300 2675 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14" H 5650 2050 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5200 2400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D64598B
P 5200 2700
F 0 "#PWR07" H 5200 2450 50  0001 C CNN
F 1 "GND" H 5200 2550 50  0000 C CNN
F 2 "" H 5200 2700 50  0001 C CNN
F 3 "" H 5200 2700 50  0001 C CNN
	1    5200 2700
	-1   0    0    -1  
$EndComp
Text Label 4450 2400 0    60   ~ 0
PHI0
Text Label 6025 2000 0    60   ~ 0
~NMI
$Comp
L Device:C C10
U 1 1 5D6459A2
P 7800 2025
F 0 "C10" H 7825 2125 50  0000 L CNN
F 1 "220nF" H 7825 1925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7838 1875 50  0001 C CNN
F 3 "" H 7800 2025 50  0001 C CNN
	1    7800 2025
	1    0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5D6459A3
P 7800 3350
F 0 "C11" H 7825 3450 50  0000 L CNN
F 1 "220nF" H 7825 3250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7838 3200 50  0001 C CNN
F 3 "" H 7800 3350 50  0001 C CNN
	1    7800 3350
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D6459A5
P 8150 3125
F 0 "R10" V 8230 3125 50  0000 C CNN
F 1 "1k" V 8150 3125 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 3125 50  0001 C CNN
F 3 "" H 8150 3125 50  0001 C CNN
	1    8150 3125
	0    -1   1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D6459A6
P 8150 1800
F 0 "R9" V 8230 1800 50  0000 C CNN
F 1 "1k" V 8150 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 1800 50  0001 C CNN
F 3 "" H 8150 1800 50  0001 C CNN
	1    8150 1800
	0    -1   1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D6459A7
P 8375 2025
F 0 "R11" V 8455 2025 50  0000 C CNN
F 1 "47k" V 8375 2025 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8305 2025 50  0001 C CNN
F 3 "" H 8375 2025 50  0001 C CNN
	1    8375 2025
	1    0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D6459A8
P 8375 3350
F 0 "R12" V 8455 3350 50  0000 C CNN
F 1 "47k" V 8375 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8305 3350 50  0001 C CNN
F 3 "" H 8375 3350 50  0001 C CNN
	1    8375 3350
	1    0    0    1   
$EndComp
$Comp
L 28c256:28C256 U3
U 1 1 5D6459B2
P 2575 6975
F 0 "U3" H 2775 7975 50  0000 C CNN
F 1 "28C256" H 2875 5975 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2575 6975 50  0001 C CNN
F 3 "" H 2575 6975 50  0001 C CNN
	1    2575 6975
	1    0    0    -1  
$EndComp
Text Label 3825 6075 2    60   ~ 0
D0
Text Label 3825 6175 2    60   ~ 0
D1
Text Label 3825 6275 2    60   ~ 0
D2
Text Label 3825 6375 2    60   ~ 0
D3
Text Label 3825 6475 2    60   ~ 0
D4
Text Label 3825 6575 2    60   ~ 0
D5
Text Label 3825 6675 2    60   ~ 0
D6
Text Label 3825 6775 2    60   ~ 0
D7
Entry Wire Line
	3850 6075 3950 6175
Entry Wire Line
	3850 6175 3950 6275
Entry Wire Line
	3850 6275 3950 6375
Entry Wire Line
	3850 6375 3950 6475
Entry Wire Line
	3850 6475 3950 6575
Entry Wire Line
	3850 6575 3950 6675
Entry Wire Line
	3850 6675 3950 6775
Entry Wire Line
	3850 6775 3950 6875
$Comp
L memory:HM62256BLP-7 U2
U 1 1 5D6459B9
P 2575 4925
F 0 "U2" H 2275 5825 50  0000 C CNN
F 1 "HM62256BLP-7" V 2575 4925 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2575 4925 50  0001 C CIN
F 3 "" H 2575 4925 50  0001 C CNN
	1    2575 4925
	1    0    0    -1  
$EndComp
Text Label 3100 4175 0    60   ~ 0
D0
Text Label 3100 4275 0    60   ~ 0
D1
Text Label 3100 4375 0    60   ~ 0
D2
Text Label 3100 4475 0    60   ~ 0
D3
Text Label 3100 4575 0    60   ~ 0
D4
Text Label 3100 4675 0    60   ~ 0
D5
Text Label 3100 4775 0    60   ~ 0
D6
Text Label 3100 4875 0    60   ~ 0
D7
Entry Wire Line
	1350 4075 1450 4175
Entry Wire Line
	1350 4275 1450 4375
Entry Wire Line
	1350 4175 1450 4275
Entry Wire Line
	1350 4375 1450 4475
Entry Wire Line
	1350 4475 1450 4575
Entry Wire Line
	1350 4575 1450 4675
Entry Wire Line
	1350 4675 1450 4775
Entry Wire Line
	1350 4775 1450 4875
Entry Wire Line
	1350 4875 1450 4975
Entry Wire Line
	1350 4975 1450 5075
Entry Wire Line
	1350 5075 1450 5175
Entry Wire Line
	1350 5175 1450 5275
Entry Wire Line
	1350 5275 1450 5375
Text Label 2050 4175 2    60   ~ 0
A0
Text Label 2050 4275 2    60   ~ 0
A1
Text Label 2050 4375 2    60   ~ 0
A2
Text Label 2050 4475 2    60   ~ 0
A3
Text Label 2050 4575 2    60   ~ 0
A4
Text Label 2050 4675 2    60   ~ 0
A5
Text Label 2050 4775 2    60   ~ 0
A6
Text Label 2050 4875 2    60   ~ 0
A7
Text Label 2050 4975 2    60   ~ 0
A8
Text Label 2050 5075 2    60   ~ 0
A9
Text Label 2050 5175 2    60   ~ 0
A10
Text Label 2050 5275 2    60   ~ 0
A11
Text Label 2050 5375 2    60   ~ 0
A12
Text Label 3800 1950 2    60   ~ 0
BE
Entry Wire Line
	3850 1950 3950 2050
Entry Wire Line
	4425 2025 4325 1925
Text Label 4450 2025 0    60   ~ 0
BE
Text Label 3800 2150 2    60   ~ 0
R/~W
$Comp
L linear:LM556 U6
U 1 1 5D65C153
P 6925 2000
F 0 "U6" H 6525 2350 50  0000 L CNN
F 1 "LM556" H 6525 1650 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6925 2000 50  0001 C CNN
F 3 "" H 6925 2000 50  0001 C CNN
	1    6925 2000
	-1   0    0    -1  
$EndComp
$Comp
L linear:LM556 U6
U 2 1 5D65C480
P 6925 3325
F 0 "U6" H 6525 3675 50  0000 L CNN
F 1 "LM556" H 6525 2975 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6925 3325 50  0001 C CNN
F 3 "" H 6925 3325 50  0001 C CNN
	2    6925 3325
	-1   0    0    -1  
$EndComp
Text GLabel 5400 9075 0    60   Output ~ 0
ST
Text GLabel 6500 9075 2    60   Output ~ 0
RS
$Comp
L power:GND #PWR08
U 1 1 5D65DEF6
P 6950 9050
F 0 "#PWR08" H 6950 8800 50  0001 C CNN
F 1 "GND" H 6950 8900 50  0000 C CNN
F 2 "" H 6950 9050 50  0001 C CNN
F 3 "" H 6950 9050 50  0001 C CNN
	1    6950 9050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D65E216
P 5400 8900
F 0 "#PWR09" H 5400 8750 50  0001 C CNN
F 1 "VCC" H 5400 9050 50  0000 C CNN
F 2 "" H 5400 8900 50  0001 C CNN
F 3 "" H 5400 8900 50  0001 C CNN
	1    5400 8900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5D6606AD
P 6925 1600
F 0 "#PWR010" H 6925 1450 50  0001 C CNN
F 1 "VCC" H 6925 1750 50  0000 C CNN
F 2 "" H 6925 1600 50  0001 C CNN
F 3 "" H 6925 1600 50  0001 C CNN
	1    6925 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5D660BCC
P 6925 2925
F 0 "#PWR011" H 6925 2775 50  0001 C CNN
F 1 "VCC" H 6925 3075 50  0000 C CNN
F 2 "" H 6925 2925 50  0001 C CNN
F 3 "" H 6925 2925 50  0001 C CNN
	1    6925 2925
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D660D9E
P 6925 2400
F 0 "#PWR012" H 6925 2150 50  0001 C CNN
F 1 "GND" H 6925 2250 50  0000 C CNN
F 2 "" H 6925 2400 50  0001 C CNN
F 3 "" H 6925 2400 50  0001 C CNN
	1    6925 2400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D661349
P 6925 3725
F 0 "#PWR013" H 6925 3475 50  0001 C CNN
F 1 "GND" H 6925 3575 50  0000 C CNN
F 2 "" H 6925 3725 50  0001 C CNN
F 3 "" H 6925 3725 50  0001 C CNN
	1    6925 3725
	-1   0    0    -1  
$EndComp
NoConn ~ 6425 1800
NoConn ~ 6425 3125
Text Label 6025 3325 0    60   ~ 0
~RESET
NoConn ~ 7425 3325
NoConn ~ 7425 2000
$Comp
L power:VCC #PWR014
U 1 1 5D66312A
P 7575 2125
F 0 "#PWR014" H 7575 1975 50  0001 C CNN
F 1 "VCC" H 7575 2275 50  0000 C CNN
F 2 "" H 7575 2125 50  0001 C CNN
F 3 "" H 7575 2125 50  0001 C CNN
	1    7575 2125
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 5D66352E
P 7575 3450
F 0 "#PWR015" H 7575 3300 50  0001 C CNN
F 1 "VCC" H 7575 3600 50  0000 C CNN
F 2 "" H 7575 3450 50  0001 C CNN
F 3 "" H 7575 3450 50  0001 C CNN
	1    7575 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D667619
P 8375 2325
F 0 "#PWR016" H 8375 2075 50  0001 C CNN
F 1 "GND" H 8375 2175 50  0000 C CNN
F 2 "" H 8375 2325 50  0001 C CNN
F 3 "" H 8375 2325 50  0001 C CNN
	1    8375 2325
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D667E88
P 8375 3650
F 0 "#PWR017" H 8375 3400 50  0001 C CNN
F 1 "GND" H 8375 3500 50  0000 C CNN
F 2 "" H 8375 3650 50  0001 C CNN
F 3 "" H 8375 3650 50  0001 C CNN
	1    8375 3650
	-1   0    0    -1  
$EndComp
Text GLabel 8450 3125 2    60   Input ~ 0
RS
Text GLabel 8450 1800 2    60   Input ~ 0
ST
Entry Wire Line
	1350 5975 1450 6075
Entry Wire Line
	1350 6175 1450 6275
Entry Wire Line
	1350 6075 1450 6175
Entry Wire Line
	1350 6275 1450 6375
Entry Wire Line
	1350 6375 1450 6475
Entry Wire Line
	1350 6475 1450 6575
Entry Wire Line
	1350 6575 1450 6675
Entry Wire Line
	1350 6675 1450 6775
Entry Wire Line
	1350 6775 1450 6875
Entry Wire Line
	1350 6875 1450 6975
Entry Wire Line
	1350 6975 1450 7075
Text Label 1475 6075 0    60   ~ 0
A0
Text Label 1475 6175 0    60   ~ 0
A1
Text Label 1475 6275 0    60   ~ 0
A2
Text Label 1475 6375 0    60   ~ 0
A3
Text Label 1475 6475 0    60   ~ 0
A4
Text Label 1475 6575 0    60   ~ 0
A5
Text Label 1475 6675 0    60   ~ 0
A6
Text Label 1475 6775 0    60   ~ 0
A7
Text Label 1475 6875 0    60   ~ 0
A8
Text Label 1475 6975 0    60   ~ 0
A9
Text Label 1475 7075 0    60   ~ 0
A10
Text Label 3450 9675 0    60   ~ 0
D0
Text Label 3450 9775 0    60   ~ 0
D1
Text Label 3450 9875 0    60   ~ 0
D2
Text Label 3450 9975 0    60   ~ 0
D3
Text Label 3450 10075 0    60   ~ 0
D4
Text Label 3450 10175 0    60   ~ 0
D5
Text Label 3450 10275 0    60   ~ 0
D6
Text Label 3450 10375 0    60   ~ 0
D7
Entry Wire Line
	3850 9675 3950 9775
Entry Wire Line
	3850 9775 3950 9875
Entry Wire Line
	3850 9875 3950 9975
Entry Wire Line
	3850 9975 3950 10075
Entry Wire Line
	3850 10075 3950 10175
Entry Wire Line
	3850 10175 3950 10275
Entry Wire Line
	3850 10275 3950 10375
Entry Wire Line
	3850 10375 3950 10475
Entry Wire Line
	3850 4175 3950 4275
Entry Wire Line
	3850 4275 3950 4375
Entry Wire Line
	3850 4375 3950 4475
Entry Wire Line
	3850 4475 3950 4575
Entry Wire Line
	3850 4575 3950 4675
Entry Wire Line
	3850 4675 3950 4775
Entry Wire Line
	3850 4775 3950 4875
Entry Wire Line
	3850 4875 3950 4975
Entry Wire Line
	3850 2150 3950 2250
Entry Wire Line
	1350 8975 1450 9075
Entry Wire Line
	1350 9175 1450 9275
Entry Wire Line
	1350 9075 1450 9175
Entry Wire Line
	1350 9275 1450 9375
Entry Wire Line
	1350 9375 1450 9475
Entry Wire Line
	1350 9475 1450 9575
Text Label 2100 9575 2    60   ~ 0
A0
Text Label 2100 9475 2    60   ~ 0
A1
Text Label 2100 9375 2    60   ~ 0
A2
Text Label 2100 9275 2    60   ~ 0
A3
Text Label 2100 9175 2    60   ~ 0
~A4
Text Label 2100 9075 2    60   ~ 0
A5
Text Label 3450 8975 0    60   ~ 0
A6
Entry Wire Line
	3850 8975 3950 9075
$Comp
L power:GND #PWR018
U 1 1 5D689C06
P 1850 8825
F 0 "#PWR018" H 1850 8575 50  0001 C CNN
F 1 "GND" H 1850 8675 50  0000 C CNN
F 2 "" H 1850 8825 50  0001 C CNN
F 3 "" H 1850 8825 50  0001 C CNN
	1    1850 8825
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 9575 3950 9675
Text Label 3450 9575 0    60   ~ 0
~RESET
Entry Wire Line
	3850 9075 3950 9175
Entry Wire Line
	3850 9475 3950 9575
Text Label 3450 9075 0    60   ~ 0
PHI2
Text Label 3450 9475 0    60   ~ 0
R/~W
Text Label 3450 10475 0    60   ~ 0
~IRQ
Entry Wire Line
	3850 10475 3950 10575
Text Label 1775 8575 0    60   ~ 0
A4
Entry Wire Line
	1350 8475 1450 8575
Text Label 3825 8575 2    60   ~ 0
~A4
Entry Wire Line
	3850 8575 3950 8675
Text Label 3450 10575 0    60   ~ 0
PB0
Text Label 3450 10675 0    60   ~ 0
PB1
Text Label 3450 10775 0    60   ~ 0
PB2
Text Label 3450 10875 0    60   ~ 0
PB3
Text Label 2100 10775 2    60   ~ 0
PB4
Text Label 2100 10675 2    60   ~ 0
PB5
Text Label 2100 10475 2    60   ~ 0
PB7
Text Label 2100 9675 2    60   ~ 0
PA0
Text Label 2100 9775 2    60   ~ 0
PA1
Text Label 2100 9875 2    60   ~ 0
PA2
Text Label 2100 9975 2    60   ~ 0
PA3
Text Label 2100 10075 2    60   ~ 0
PA4
Text Label 2100 10175 2    60   ~ 0
PA5
Text Label 2100 10275 2    60   ~ 0
PA6
Text Label 2100 10375 2    60   ~ 0
PA7
Entry Wire Line
	1850 9675 1750 9775
Entry Wire Line
	1850 9775 1750 9875
Entry Wire Line
	1850 9875 1750 9975
Entry Wire Line
	1850 9975 1750 10075
Entry Wire Line
	1850 10075 1750 10175
Entry Wire Line
	1850 10175 1750 10275
Entry Wire Line
	1850 10275 1750 10375
Entry Wire Line
	1850 10375 1750 10475
Entry Wire Line
	1850 10475 1750 10575
Entry Wire Line
	1850 10775 1750 10875
Entry Wire Line
	1850 10675 1750 10775
Entry Wire Line
	3700 10875 3800 10975
Entry Wire Line
	3700 10775 3800 10875
Entry Wire Line
	3700 10675 3800 10775
Entry Wire Line
	3700 10575 3800 10675
$Comp
L power:VCC #PWR019
U 1 1 5D6AAE8D
P 2025 10975
F 0 "#PWR019" H 2025 10825 50  0001 C CNN
F 1 "VCC" H 2025 11125 50  0000 C CNN
F 2 "" H 2025 10975 50  0001 C CNN
F 3 "" H 2025 10975 50  0001 C CNN
	1    2025 10975
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5D6ACFF7
P 1875 7675
F 0 "#PWR020" H 1875 7525 50  0001 C CNN
F 1 "VCC" H 1875 7825 50  0000 C CNN
F 2 "" H 1875 7675 50  0001 C CNN
F 3 "" H 1875 7675 50  0001 C CNN
	1    1875 7675
	1    0    0    -1  
$EndComp
Text Label 4450 4825 0    60   ~ 0
A10
Text Label 4450 4925 0    60   ~ 0
A11
Text Label 4450 5025 0    60   ~ 0
A12
Text Label 4450 5525 0    60   ~ 0
DEN
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5D6C7ED0
P 4575 5650
F 0 "JP2" H 4575 5730 50  0000 C CNN
F 1 "DEN" H 4550 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4575 5650 50  0001 C CNN
F 3 "" H 4575 5650 50  0001 C CNN
	1    4575 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5D6C9D96
P 4400 5725
F 0 "#PWR021" H 4400 5475 50  0001 C CNN
F 1 "GND" H 4400 5575 50  0000 C CNN
F 2 "" H 4400 5725 50  0001 C CNN
F 3 "" H 4400 5725 50  0001 C CNN
	1    4400 5725
	1    0    0    -1  
$EndComp
Text GLabel 3225 5275 2    60   Input ~ 0
K0
Text GLabel 1725 7875 0    60   Input ~ 0
K7
Entry Wire Line
	4325 4725 4425 4825
Entry Wire Line
	4325 4825 4425 4925
Entry Wire Line
	4325 4925 4425 5025
Entry Wire Line
	4325 5425 4425 5525
$Comp
L RC1-CPU-rescue:74LS138 U8
U 1 1 5D6D4F15
P 5425 6725
F 0 "U8" H 5425 6725 50  0000 C CNN
F 1 "74LS138" H 5425 6225 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5425 6725 50  0001 C CNN
F 3 "" H 5425 6725 50  0001 C CNN
	1    5425 6725
	1    0    0    -1  
$EndComp
Text GLabel 4750 7075 0    60   Input ~ 0
K5
Text Label 4450 6575 0    60   ~ 0
A8
Entry Wire Line
	4325 6475 4425 6575
Text Label 4450 6475 0    60   ~ 0
A7
Entry Wire Line
	4325 6375 4425 6475
Entry Wire Line
	4325 6775 4425 6875
Text Label 4450 6875 0    60   ~ 0
A9
$Comp
L power:GND #PWR022
U 1 1 5D6D7527
P 4400 7050
F 0 "#PWR022" H 4400 6800 50  0001 C CNN
F 1 "GND" H 4400 6900 50  0000 C CNN
F 2 "" H 4400 7050 50  0001 C CNN
F 3 "" H 4400 7050 50  0001 C CNN
	1    4400 7050
	1    0    0    -1  
$EndComp
NoConn ~ 6025 6675
NoConn ~ 6025 6575
NoConn ~ 6025 6475
NoConn ~ 6025 6375
$Comp
L RC1-CPU-rescue:74LS00 U9
U 1 1 5D6DB7A4
P 6975 5625
F 0 "U9" H 6975 5675 50  0000 C CNN
F 1 "74LS00" H 6975 5525 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6975 5625 50  0001 C CNN
F 3 "" H 6975 5625 50  0001 C CNN
	1    6975 5625
	1    0    0    -1  
$EndComp
Text GLabel 6900 6475 2    60   Output ~ 0
~IO3
Text GLabel 8175 6975 2    60   Output ~ 0
IO2
Text GLabel 9675 7475 2    60   Output ~ 0
~RAM_SEL
Text GLabel 4025 9375 2    60   Input ~ 0
~RAM_SEL
$Comp
L power:VCC #PWR023
U 1 1 5D6E442A
P 6325 1600
F 0 "#PWR023" H 6325 1450 50  0001 C CNN
F 1 "VCC" H 6325 1750 50  0000 C CNN
F 2 "" H 6325 1600 50  0001 C CNN
F 3 "" H 6325 1600 50  0001 C CNN
	1    6325 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 5D6E5643
P 6350 2925
F 0 "#PWR024" H 6350 2775 50  0001 C CNN
F 1 "VCC" H 6350 3075 50  0000 C CNN
F 2 "" H 6350 2925 50  0001 C CNN
F 3 "" H 6350 2925 50  0001 C CNN
	1    6350 2925
	-1   0    0    -1  
$EndComp
Entry Wire Line
	4425 2400 4325 2300
Entry Wire Line
	5900 1900 6000 2000
Entry Wire Line
	5900 3225 6000 3325
Text Label 2100 10575 2    60   ~ 0
PB6
Entry Wire Line
	1850 10575 1750 10675
Text Label 5450 10375 2    60   ~ 0
PA0
Text Label 5450 10275 2    60   ~ 0
PA1
Text Label 5450 10175 2    60   ~ 0
PA2
Text Label 5450 10075 2    60   ~ 0
PA3
Text Label 6450 10075 0    60   ~ 0
PA4
Text Label 6450 10175 0    60   ~ 0
PA5
Text Label 6450 10275 0    60   ~ 0
PA6
Text Label 6625 10375 2    60   ~ 0
PA7
Entry Wire Line
	5200 10075 5100 10175
Entry Wire Line
	5200 10175 5100 10275
Entry Wire Line
	5200 10275 5100 10375
Entry Wire Line
	5200 10375 5100 10475
Entry Wire Line
	5200 10475 5100 10575
Entry Wire Line
	5200 10575 5100 10675
Entry Wire Line
	5200 10675 5100 10775
Entry Wire Line
	5200 10775 5100 10875
Text Label 5450 10475 2    60   ~ 0
PB0
Text Label 5450 10575 2    60   ~ 0
PB1
Text Label 5450 10675 2    60   ~ 0
PB2
Text Label 5450 10775 2    60   ~ 0
PB3
Entry Wire Line
	6700 10375 6800 10475
Entry Wire Line
	6700 10275 6800 10375
Entry Wire Line
	6700 10175 6800 10275
Entry Wire Line
	6700 10075 6800 10175
Text Label 6450 10775 0    60   ~ 0
PB4
Text Label 6450 10675 0    60   ~ 0
PB5
Text Label 6450 10475 0    60   ~ 0
PB7
Entry Wire Line
	6700 10475 6800 10575
Entry Wire Line
	6700 10775 6800 10875
Entry Wire Line
	6700 10675 6800 10775
Text Label 6450 10575 0    60   ~ 0
PB6
Entry Wire Line
	6700 10575 6800 10675
Text GLabel 3425 9175 2    60   Input ~ 0
IO2
$Comp
L power:GND #PWR025
U 1 1 5D6FEB12
P 3800 9175
F 0 "#PWR025" H 3800 8925 50  0001 C CNN
F 1 "GND" H 3800 9025 50  0000 C CNN
F 2 "" H 3800 9175 50  0001 C CNN
F 3 "" H 3800 9175 50  0001 C CNN
	1    3800 9175
	1    0    0    -1  
$EndComp
NoConn ~ 5475 9375
NoConn ~ 5475 9475
NoConn ~ 5475 9575
NoConn ~ 5475 9675
NoConn ~ 5475 9775
NoConn ~ 5475 9875
NoConn ~ 6425 9875
NoConn ~ 6425 9775
NoConn ~ 6425 9675
NoConn ~ 6425 9575
NoConn ~ 6425 9475
$Comp
L RC1-CPU-rescue:74LS00 U9
U 2 1 5D7159A9
P 5425 8000
F 0 "U9" H 5425 8050 50  0000 C CNN
F 1 "74LS00" H 5425 7900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5425 8000 50  0001 C CNN
F 3 "" H 5425 8000 50  0001 C CNN
	2    5425 8000
	1    0    0    -1  
$EndComp
$Comp
L RC1-CPU-rescue:74LS00 U9
U 3 1 5D715A8D
P 6975 8175
F 0 "U9" H 6975 8225 50  0000 C CNN
F 1 "74LS00" H 6975 8075 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6975 8175 50  0001 C CNN
F 3 "" H 6975 8175 50  0001 C CNN
	3    6975 8175
	1    0    0    -1  
$EndComp
$Comp
L RC1-CPU-rescue:74LS00 U9
U 4 1 5D715B0E
P 8325 5625
F 0 "U9" H 8325 5675 50  0000 C CNN
F 1 "74LS00" H 8325 5525 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8325 5625 50  0001 C CNN
F 3 "" H 8325 5625 50  0001 C CNN
	4    8325 5625
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D71BEBA
P 9275 10550
F 0 "C1" H 9300 10650 50  0000 L CNN
F 1 "100nF" H 9300 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9313 10400 50  0001 C CNN
F 3 "" H 9275 10550 50  0001 C CNN
	1    9275 10550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D71E74B
P 11525 10850
F 0 "#PWR026" H 11525 10600 50  0001 C CNN
F 1 "GND" H 11525 10700 50  0000 C CNN
F 2 "" H 11525 10850 50  0001 C CNN
F 3 "" H 11525 10850 50  0001 C CNN
	1    11525 10850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 5D72035A
P 9275 10250
F 0 "#PWR027" H 9275 10100 50  0001 C CNN
F 1 "VCC" H 9275 10400 50  0000 C CNN
F 2 "" H 9275 10250 50  0001 C CNN
F 3 "" H 9275 10250 50  0001 C CNN
	1    9275 10250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D72237F
P 9575 10550
F 0 "C2" H 9600 10650 50  0000 L CNN
F 1 "100nF" H 9600 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9613 10400 50  0001 C CNN
F 3 "" H 9575 10550 50  0001 C CNN
	1    9575 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D722417
P 9875 10550
F 0 "C3" H 9900 10650 50  0000 L CNN
F 1 "100nF" H 9900 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9913 10400 50  0001 C CNN
F 3 "" H 9875 10550 50  0001 C CNN
	1    9875 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D7224A6
P 10150 10550
F 0 "C4" H 10175 10650 50  0000 L CNN
F 1 "100nF" H 10175 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10188 10400 50  0001 C CNN
F 3 "" H 10150 10550 50  0001 C CNN
	1    10150 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D722536
P 10425 10550
F 0 "C5" H 10450 10650 50  0000 L CNN
F 1 "100nF" H 10450 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10463 10400 50  0001 C CNN
F 3 "" H 10425 10550 50  0001 C CNN
	1    10425 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D72266D
P 10700 10550
F 0 "C6" H 10725 10650 50  0000 L CNN
F 1 "100nF" H 10725 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10738 10400 50  0001 C CNN
F 3 "" H 10700 10550 50  0001 C CNN
	1    10700 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D72270D
P 10975 10550
F 0 "C7" H 11000 10650 50  0000 L CNN
F 1 "100nF" H 11000 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11013 10400 50  0001 C CNN
F 3 "" H 10975 10550 50  0001 C CNN
	1    10975 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D7227AA
P 11250 10550
F 0 "C8" H 11275 10650 50  0000 L CNN
F 1 "100nF" H 11275 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11288 10400 50  0001 C CNN
F 3 "" H 11250 10550 50  0001 C CNN
	1    11250 10550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5D722846
P 11525 10550
F 0 "C9" H 11550 10650 50  0000 L CNN
F 1 "100nF" H 11550 10450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11563 10400 50  0001 C CNN
F 3 "" H 11525 10550 50  0001 C CNN
	1    11525 10550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5D729D92
P 5375 10825
F 0 "#PWR028" H 5375 10575 50  0001 C CNN
F 1 "GND" H 5375 10675 50  0000 C CNN
F 2 "" H 5375 10825 50  0001 C CNN
F 3 "" H 5375 10825 50  0001 C CNN
	1    5375 10825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5D72A34D
P 6525 10825
F 0 "#PWR029" H 6525 10575 50  0001 C CNN
F 1 "GND" H 6525 10675 50  0000 C CNN
F 2 "" H 6525 10825 50  0001 C CNN
F 3 "" H 6525 10825 50  0001 C CNN
	1    6525 10825
	1    0    0    -1  
$EndComp
NoConn ~ 6425 9975
Text Label 4450 7900 0    60   ~ 0
R/~W
Entry Wire Line
	4325 7800 4425 7900
Text Label 4450 8350 0    60   ~ 0
PHI2
Entry Wire Line
	4325 8250 4425 8350
Text GLabel 7650 8175 2    60   Output ~ 0
RAM_R/~W
Text GLabel 3225 5125 2    60   Input ~ 0
RAM_R/~W
$Comp
L Device:R_Network08 RN1
U 1 1 5D665BC0
P 5025 3525
F 0 "RN1" V 4525 3525 50  0000 C CNN
F 1 "4k7x8" V 5425 3525 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 5500 3525 50  0001 C CNN
F 3 "" H 5025 3525 50  0001 C CNN
	1    5025 3525
	0    1    -1   0   
$EndComp
Text Label 4800 3225 2    60   ~ 0
D0
Text Label 4800 3325 2    60   ~ 0
D1
Text Label 4800 3425 2    60   ~ 0
D2
Text Label 4800 3525 2    60   ~ 0
D3
Text Label 4800 3625 2    60   ~ 0
D4
Text Label 4800 3725 2    60   ~ 0
D5
Text Label 4800 3825 2    60   ~ 0
D6
Text Label 4800 3925 2    60   ~ 0
D7
Entry Wire Line
	4050 3225 3950 3325
Entry Wire Line
	4050 3325 3950 3425
Entry Wire Line
	4050 3425 3950 3525
Entry Wire Line
	4050 3525 3950 3625
Entry Wire Line
	4050 3625 3950 3725
Entry Wire Line
	4050 3725 3950 3825
Entry Wire Line
	4050 3825 3950 3925
Entry Wire Line
	4050 3925 3950 4025
$Comp
L power:GND #PWR030
U 1 1 5D6667E9
P 5300 4000
F 0 "#PWR030" H 5300 3750 50  0001 C CNN
F 1 "GND" H 5300 3850 50  0000 C CNN
F 2 "" H 5300 4000 50  0001 C CNN
F 3 "" H 5300 4000 50  0001 C CNN
	1    5300 4000
	-1   0    0    -1  
$EndComp
Text GLabel 6650 9175 2    60   Input ~ 0
K7
Text Label 6450 9275 0    60   ~ 0
~NMI
Entry Wire Line
	6700 9275 6800 9375
Text Label 5450 9275 2    60   ~ 0
SYNC
Entry Wire Line
	5200 9275 5100 9375
Entry Wire Line
	1350 1650 1450 1750
Text Label 1475 1750 0    60   ~ 0
PHI1
Text Label 6450 9375 0    60   ~ 0
PHI1
Entry Wire Line
	6700 9375 6800 9475
Text Notes 12175 10925 0    60   ~ 0
RC-ONE CPU
Text Notes 11825 10550 0    60   ~ 0
RC-ONE CPU module, takes care of most central functions including CPU, RAM and ROM.\nThe two latter categories aren't used anywhere near capacity, mostly because today\nthose chips are the cheapest and easiest to get hold off without physically being larger.\nUser Interface module slots on top and takes care of keypad as well as I/O expected on\na KIM-1 computer. Most signals are available on backplane connector for adding any\nother modules and functionality to the RC-ONE computer.
Text Notes 9925 4900 0    60   ~ 0
K0 - 1K Standard SRAM
Text Label 4450 6375 0    60   ~ 0
A6
Entry Wire Line
	4325 6275 4425 6375
Text Notes 6200 7575 0    60   ~ 0
$17C0-17FF
Text Notes 6200 7375 0    60   ~ 0
$1780-17BF
Text Notes 6200 6875 0    60   ~ 0
$1740-177F
Text Notes 6200 6475 0    60   ~ 0
$1700-173F
Text GLabel 9500 4650 2    60   Input ~ 0
K0_EXT
Text GLabel 9500 5625 2    60   Input ~ 0
K7_EXT
$Comp
L Device:Jumper_NC_Dual JP3
U 1 1 5D75B55F
P 9250 4650
F 0 "JP3" H 9300 4550 50  0000 L CNN
F 1 "RAM_CS" H 9250 4750 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9250 4650 50  0001 C CNN
F 3 "" H 9250 4650 50  0001 C CNN
	1    9250 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP4
U 1 1 5D75BCD3
P 9250 5625
F 0 "JP4" H 9300 5525 50  0000 L CNN
F 1 "ROM_CS" H 9250 5725 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9250 5625 50  0001 C CNN
F 3 "" H 9250 5625 50  0001 C CNN
	1    9250 5625
	1    0    0    -1  
$EndComp
Text GLabel 9500 4850 2    60   Output ~ 0
K0
Text GLabel 9500 5825 2    60   Output ~ 0
K7
Text Notes 9925 5375 0    60   ~ 0
K5 - RIOT
Text Notes 9925 5775 0    60   ~ 0
K7 - EEPROM (6530-002)
NoConn ~ 5475 9175
$Comp
L Device:Jumper_NC_Dual JP7
U 1 1 5D779B66
P 675 7100
F 0 "JP7" H 725 7000 50  0000 L CNN
F 1 "A13" H 675 7200 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 675 7100 50  0001 C CNN
F 3 "" H 675 7100 50  0001 C CNN
	1    675  7100
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D77A162
P 675 7350
F 0 "#PWR031" H 675 7100 50  0001 C CNN
F 1 "GND" H 675 7200 50  0000 C CNN
F 2 "" H 675 7350 50  0001 C CNN
F 3 "" H 675 7350 50  0001 C CNN
	1    675  7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR032
U 1 1 5D77A569
P 675 6850
F 0 "#PWR032" H 675 6700 50  0001 C CNN
F 1 "VCC" H 675 7000 50  0000 C CNN
F 2 "" H 675 6850 50  0001 C CNN
F 3 "" H 675 6850 50  0001 C CNN
	1    675  6850
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP8
U 1 1 5D77AA4F
P 875 7750
F 0 "JP8" H 925 7650 50  0000 L CNN
F 1 "A14" H 875 7850 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 875 7750 50  0001 C CNN
F 3 "" H 875 7750 50  0001 C CNN
	1    875  7750
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D77AA55
P 875 8000
F 0 "#PWR033" H 875 7750 50  0001 C CNN
F 1 "GND" H 875 7850 50  0000 C CNN
F 2 "" H 875 8000 50  0001 C CNN
F 3 "" H 875 8000 50  0001 C CNN
	1    875  8000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR034
U 1 1 5D77AA5B
P 875 7500
F 0 "#PWR034" H 875 7350 50  0001 C CNN
F 1 "VCC" H 875 7650 50  0000 C CNN
F 2 "" H 875 7500 50  0001 C CNN
F 3 "" H 875 7500 50  0001 C CNN
	1    875  7500
	1    0    0    -1  
$EndComp
Entry Wire Line
	1350 5375 1450 5475
Entry Wire Line
	1350 5475 1450 5575
Text Label 2050 5475 2    60   ~ 0
A13
Text Label 2050 5575 2    60   ~ 0
A14
Entry Wire Line
	1350 7075 1450 7175
Text Label 1475 7175 0    60   ~ 0
A11
Entry Wire Line
	1350 7175 1450 7275
Text Label 1475 7275 0    60   ~ 0
A12
Text Notes 9925 5675 0    60   ~ 0
K6 - EEPROM (6530-003)
Text Notes 9025 4425 0    60   ~ 0
8K0 $0000-$1FFF
Text Notes 4500 5950 0    39   ~ 0
Link JP2 when NOT\nusing with 65K\nExpansion card!
Text Label 6050 8000 0    60   ~ 0
W/~R
$Comp
L power:VCC #PWR035
U 1 1 5D900F34
P 2575 5925
F 0 "#PWR035" H 2575 5775 50  0001 C CNN
F 1 "VCC" H 2575 6075 50  0000 C CNN
F 2 "" H 2575 5925 50  0001 C CNN
F 3 "" H 2575 5925 50  0001 C CNN
	1    2575 5925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5D9012CC
P 2575 8025
F 0 "#PWR036" H 2575 7775 50  0001 C CNN
F 1 "GND" H 2575 7875 50  0000 C CNN
F 2 "" H 2575 8025 50  0001 C CNN
F 3 "" H 2575 8025 50  0001 C CNN
	1    2575 8025
	1    0    0    -1  
$EndComp
Text GLabel 15050 9750 0    60   Input ~ 0
~IO3
Text GLabel 15050 9650 0    60   Output ~ 0
K7_EXT
Text GLabel 15050 9550 0    60   Output ~ 0
K0_EXT
Entry Wire Line
	14725 8250 14625 8350
Text Label 15100 9450 2    60   ~ 0
DEN
Text Label 15100 8250 2    60   ~ 0
~NMI
Text Label 15100 9350 2    60   ~ 0
D7
Text Label 15100 9250 2    60   ~ 0
D6
Text Label 15100 9150 2    60   ~ 0
D5
Text Label 15100 9050 2    60   ~ 0
D4
Text Label 15100 8950 2    60   ~ 0
D3
Text Label 15100 8850 2    60   ~ 0
D2
Text Label 15100 8750 2    60   ~ 0
D1
Text Label 15100 8650 2    60   ~ 0
D0
Text Label 15100 8550 2    60   ~ 0
SYNC
Text Label 15100 8450 2    60   ~ 0
~RDY
Text Label 15100 8350 2    60   ~ 0
R/~W
Text Label 15100 8150 2    60   ~ 0
~IRQ
Entry Wire Line
	14725 7950 14625 8050
Entry Wire Line
	14725 8050 14625 8150
Entry Wire Line
	14725 7850 14625 7950
Entry Wire Line
	14725 9450 14625 9550
Entry Wire Line
	14725 9350 14625 9450
Entry Wire Line
	14725 9250 14625 9350
Entry Wire Line
	14725 9150 14625 9250
Entry Wire Line
	14725 9050 14625 9150
Entry Wire Line
	14725 8950 14625 9050
Entry Wire Line
	14725 8850 14625 8950
Entry Wire Line
	14725 8750 14625 8850
Entry Wire Line
	14725 8650 14625 8750
Entry Wire Line
	14725 8550 14625 8650
Entry Wire Line
	14725 8450 14625 8550
Entry Wire Line
	14725 8350 14625 8450
Entry Wire Line
	14725 8150 14625 8250
Text Label 15100 8050 2    60   ~ 0
PHI0
Text Label 15100 7950 2    60   ~ 0
~RESET
Text Label 15100 7850 2    60   ~ 0
PHI2
Text Label 15100 6050 2    60   ~ 0
A15
Text Label 15100 6150 2    60   ~ 0
A14
Text Label 15100 6250 2    60   ~ 0
A13
Text Label 15100 6350 2    60   ~ 0
A12
Entry Wire Line
	14625 7350 14725 7450
Entry Wire Line
	14625 7250 14725 7350
Entry Wire Line
	14625 7150 14725 7250
Entry Wire Line
	14625 7050 14725 7150
Text Label 15100 6450 2    60   ~ 0
A11
Text Label 15100 6550 2    60   ~ 0
A10
Text Label 15100 6650 2    60   ~ 0
A9
Text Label 15100 6750 2    60   ~ 0
A8
Text Label 15100 6850 2    60   ~ 0
A7
Text Label 15100 6950 2    60   ~ 0
A6
Text Label 15100 7050 2    60   ~ 0
A5
Text Label 15100 7150 2    60   ~ 0
A4
Text Label 15100 7250 2    60   ~ 0
A3
Text Label 15100 7350 2    60   ~ 0
A2
Text Label 15100 7450 2    60   ~ 0
A1
Text Label 15100 7550 2    60   ~ 0
A0
Entry Wire Line
	14625 7450 14725 7550
Entry Wire Line
	14625 6950 14725 7050
Entry Wire Line
	14625 6850 14725 6950
Entry Wire Line
	14625 6750 14725 6850
Entry Wire Line
	14625 6650 14725 6750
Entry Wire Line
	14625 6550 14725 6650
Entry Wire Line
	14625 6450 14725 6550
Entry Wire Line
	14625 6350 14725 6450
Entry Wire Line
	14625 6250 14725 6350
Entry Wire Line
	14625 6150 14725 6250
Entry Wire Line
	14625 6050 14725 6150
Entry Wire Line
	14625 5950 14725 6050
$Comp
L power:VCC #PWR037
U 1 1 5D63F697
P 14525 7575
F 0 "#PWR037" H 14525 7425 50  0001 C CNN
F 1 "VCC" H 14525 7725 50  0000 C CNN
F 2 "" H 14525 7575 50  0001 C CNN
F 3 "" H 14525 7575 50  0001 C CNN
	1    14525 7575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5D63F634
P 14450 7750
F 0 "#PWR038" H 14450 7500 50  0001 C CNN
F 1 "GND" H 14450 7600 50  0000 C CNN
F 2 "" H 14450 7750 50  0001 C CNN
F 3 "" H 14450 7750 50  0001 C CNN
	1    14450 7750
	1    0    0    -1  
$EndComp
$Comp
L rc1_backplane:RC1_Backplane J1
U 1 1 5D63EFA3
P 15325 7950
F 0 "J1" H 15325 9950 50  0000 C CNN
F 1 "Expansion" V 15775 7900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x39_Pitch2.54mm" H 15325 7950 50  0001 C CNN
F 3 "" H 15325 7950 50  0001 C CNN
	1    15325 7950
	1    0    0    -1  
$EndComp
Text Notes 5050 6375 0    60   ~ 0
A
Text Notes 5050 6475 0    60   ~ 0
B
Text Notes 5050 6575 0    60   ~ 0
C
$Comp
L RC1-CPU-rescue:74LS138 U7
U 1 1 5D946CCA
P 5425 5175
F 0 "U7" H 5425 5175 50  0000 C CNN
F 1 "74LS138" H 5425 4675 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 5425 5175 50  0001 C CNN
F 3 "" H 5425 5175 50  0001 C CNN
	1    5425 5175
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR039
U 1 1 5D94A45C
P 4750 5250
F 0 "#PWR039" H 4750 5100 50  0001 C CNN
F 1 "VCC" H 4750 5400 50  0000 C CNN
F 2 "" H 4750 5250 50  0001 C CNN
F 3 "" H 4750 5250 50  0001 C CNN
	1    4750 5250
	1    0    0    -1  
$EndComp
Text Notes 15400 11075 0    60   ~ 0
B
Wire Wire Line
	15750 1150 15850 1150
Wire Wire Line
	15850 1050 15850 1150
Wire Wire Line
	15850 1050 15750 1050
Connection ~ 15850 1150
Wire Wire Line
	15850 875  15850 950 
Wire Wire Line
	15850 950  15750 950 
Wire Wire Line
	4425 1850 4825 1850
Wire Wire Line
	4425 1675 4825 1675
Wire Wire Line
	3075 4175 3850 4175
Wire Wire Line
	3075 4275 3850 4275
Wire Wire Line
	3075 4375 3850 4375
Wire Wire Line
	3075 4475 3850 4475
Wire Wire Line
	3075 4575 3850 4575
Wire Wire Line
	3075 4675 3850 4675
Wire Wire Line
	3075 4775 3850 4775
Wire Wire Line
	3075 4875 3850 4875
Wire Wire Line
	1450 4175 2075 4175
Wire Wire Line
	1450 4275 2075 4275
Wire Wire Line
	1450 4375 2075 4375
Wire Wire Line
	1450 4475 2075 4475
Wire Wire Line
	1450 5075 2075 5075
Wire Wire Line
	1450 5175 2075 5175
Wire Wire Line
	1450 5275 2075 5275
Wire Wire Line
	1450 5375 2075 5375
Wire Wire Line
	1450 4575 2075 4575
Wire Wire Line
	1450 4675 2075 4675
Wire Wire Line
	1450 4775 2075 4775
Wire Wire Line
	1450 4875 2075 4875
Wire Wire Line
	1450 4975 2075 4975
Wire Wire Line
	1800 1275 1800 1200
Wire Wire Line
	1800 1200 2025 1200
Wire Wire Line
	2025 1200 2025 1275
Wire Wire Line
	1800 1475 1800 1550
Wire Wire Line
	1800 1550 1875 1550
Wire Wire Line
	4425 2025 4825 2025
Wire Wire Line
	5400 9075 5475 9075
Wire Wire Line
	6425 9075 6500 9075
Wire Wire Line
	6425 8975 6950 8975
Wire Wire Line
	6950 8975 6950 9050
Wire Wire Line
	5400 8900 5400 8975
Wire Wire Line
	5400 8975 5475 8975
Wire Wire Line
	7575 2125 7575 2200
Wire Wire Line
	7575 2200 7425 2200
Wire Wire Line
	7575 3450 7575 3525
Wire Wire Line
	7575 3525 7425 3525
Wire Wire Line
	7425 1800 7675 1800
Wire Wire Line
	7675 1800 7675 2600
Wire Wire Line
	7675 2600 6350 2600
Wire Wire Line
	6350 2600 6350 2200
Wire Wire Line
	6350 2200 6425 2200
Wire Wire Line
	7425 3125 7675 3125
Wire Wire Line
	7675 3125 7675 3925
Wire Wire Line
	7675 3925 6350 3925
Wire Wire Line
	6350 3925 6350 3525
Wire Wire Line
	6350 3525 6425 3525
Wire Wire Line
	7800 1875 7800 1800
Connection ~ 7675 1800
Wire Wire Line
	7800 3125 7800 3200
Connection ~ 7675 3125
Wire Wire Line
	7800 2250 7800 2175
Wire Wire Line
	7800 3575 7800 3500
Connection ~ 7800 3125
Connection ~ 7800 1800
Wire Wire Line
	8300 3125 8375 3125
Wire Wire Line
	8300 1800 8375 1800
Wire Wire Line
	8375 1875 8375 1800
Connection ~ 8375 1800
Wire Wire Line
	8375 3200 8375 3125
Connection ~ 8375 3125
Wire Wire Line
	8375 2175 8375 2250
Wire Wire Line
	8375 2250 7800 2250
Connection ~ 8375 2250
Wire Wire Line
	7800 3575 8375 3575
Wire Wire Line
	8375 3500 8375 3575
Connection ~ 8375 3575
Wire Wire Line
	6000 2000 6325 2000
Wire Wire Line
	6000 3325 6350 3325
Wire Wire Line
	3425 9675 3850 9675
Wire Wire Line
	3425 9775 3850 9775
Wire Wire Line
	3425 9875 3850 9875
Wire Wire Line
	3425 9975 3850 9975
Wire Wire Line
	3425 10075 3850 10075
Wire Wire Line
	3425 10175 3850 10175
Wire Wire Line
	3425 10275 3850 10275
Wire Wire Line
	3425 10375 3850 10375
Wire Wire Line
	3275 6775 3850 6775
Wire Wire Line
	3275 6675 3850 6675
Wire Wire Line
	3275 6575 3850 6575
Wire Wire Line
	3275 6475 3850 6475
Wire Wire Line
	3275 6375 3850 6375
Wire Wire Line
	3275 6275 3850 6275
Wire Wire Line
	3275 6175 3850 6175
Wire Wire Line
	3275 6075 3850 6075
Wire Wire Line
	1450 9075 2125 9075
Wire Wire Line
	1450 9175 2125 9175
Wire Wire Line
	1450 9275 2125 9275
Wire Wire Line
	1450 9375 2125 9375
Wire Wire Line
	1450 9475 2125 9475
Wire Wire Line
	1450 9575 2125 9575
Wire Wire Line
	3425 8975 3850 8975
Wire Wire Line
	2125 8975 2050 8975
Wire Wire Line
	2050 8975 2050 8825
Wire Wire Line
	2050 8825 1850 8825
Wire Wire Line
	3425 9575 3850 9575
Wire Wire Line
	3425 9075 3850 9075
Wire Wire Line
	3425 9475 3850 9475
Wire Wire Line
	3425 10475 3850 10475
Wire Wire Line
	1450 8575 2125 8575
Wire Wire Line
	2125 8475 2125 8575
Wire Wire Line
	2125 8475 2200 8475
Wire Wire Line
	2125 8675 2200 8675
Connection ~ 2125 8575
Wire Wire Line
	3400 8575 3850 8575
Wire Wire Line
	3075 5025 3150 5025
Wire Wire Line
	3150 5025 3150 5275
Wire Wire Line
	3075 5275 3150 5275
Connection ~ 3150 5275
Wire Wire Line
	1850 9675 2125 9675
Wire Wire Line
	1850 9775 2125 9775
Wire Wire Line
	1850 9875 2125 9875
Wire Wire Line
	1850 9975 2125 9975
Wire Wire Line
	1850 10075 2125 10075
Wire Wire Line
	1850 10175 2125 10175
Wire Wire Line
	1850 10275 2125 10275
Wire Wire Line
	1850 10375 2125 10375
Wire Wire Line
	1850 10475 2125 10475
Wire Wire Line
	1850 10775 2125 10775
Wire Wire Line
	1850 10675 2125 10675
Wire Wire Line
	3425 10875 3700 10875
Wire Wire Line
	3425 10775 3700 10775
Wire Wire Line
	3700 10575 3425 10575
Wire Wire Line
	3425 10675 3700 10675
Wire Bus Line
	1750 11025 6800 11025
Wire Wire Line
	2025 10975 2125 10975
Wire Wire Line
	2125 10975 2125 10875
Wire Wire Line
	1800 7775 1875 7775
Wire Wire Line
	1725 7875 1800 7875
Wire Wire Line
	1800 7875 1800 7775
Wire Wire Line
	4425 4825 4825 4825
Wire Wire Line
	4425 4925 4825 4925
Wire Wire Line
	4425 5025 4825 5025
Wire Wire Line
	4425 5525 4750 5525
Wire Wire Line
	4750 5425 4750 5525
Connection ~ 4750 5525
Wire Wire Line
	4475 5650 4400 5650
Wire Wire Line
	4400 5650 4400 5725
Wire Wire Line
	4750 5650 4675 5650
Connection ~ 1800 7875
Wire Wire Line
	4750 7075 4825 7075
Wire Wire Line
	4425 6575 4825 6575
Wire Wire Line
	4425 6475 4825 6475
Wire Wire Line
	4425 6875 4825 6875
Wire Wire Line
	4400 6975 4825 6975
Wire Wire Line
	4400 6975 4400 7050
Wire Wire Line
	4025 9375 3425 9375
Wire Wire Line
	6325 1925 6325 2000
Connection ~ 6325 2000
Wire Wire Line
	6350 3250 6350 3325
Connection ~ 6350 3325
Wire Wire Line
	6325 1600 6325 1625
Wire Wire Line
	6350 2925 6350 2950
Wire Wire Line
	5200 1600 5200 1675
Wire Wire Line
	5200 2025 5125 2025
Wire Wire Line
	5125 1850 5200 1850
Connection ~ 5200 1850
Wire Wire Line
	5125 1675 5200 1675
Connection ~ 5200 1675
Wire Wire Line
	4425 2400 4900 2400
Connection ~ 5200 2025
Wire Wire Line
	1850 10575 2125 10575
Wire Wire Line
	5200 10075 5475 10075
Wire Wire Line
	5200 10175 5475 10175
Wire Wire Line
	5200 10275 5475 10275
Wire Wire Line
	5200 10375 5475 10375
Wire Wire Line
	5200 10475 5475 10475
Wire Wire Line
	5200 10575 5475 10575
Wire Wire Line
	5200 10675 5475 10675
Wire Wire Line
	5200 10775 5475 10775
Wire Wire Line
	6425 10375 6700 10375
Wire Wire Line
	6425 10275 6700 10275
Wire Wire Line
	6700 10075 6425 10075
Wire Wire Line
	6425 10175 6700 10175
Wire Wire Line
	6700 10475 6425 10475
Wire Wire Line
	6700 10775 6425 10775
Wire Wire Line
	6700 10675 6425 10675
Wire Wire Line
	6700 10575 6425 10575
Wire Wire Line
	3800 9175 3800 9150
Wire Wire Line
	3800 9150 3700 9150
Wire Wire Line
	3700 9150 3700 9275
Wire Wire Line
	3700 9275 3425 9275
Wire Bus Line
	14300 950  14300 7950
Wire Wire Line
	11525 10700 11525 10775
Wire Wire Line
	9275 10775 9575 10775
Wire Wire Line
	9275 10775 9275 10700
Wire Wire Line
	9575 10700 9575 10775
Connection ~ 9575 10775
Wire Wire Line
	9875 10700 9875 10775
Connection ~ 9875 10775
Wire Wire Line
	10150 10700 10150 10775
Connection ~ 10150 10775
Wire Wire Line
	10425 10700 10425 10775
Connection ~ 10425 10775
Wire Wire Line
	10700 10700 10700 10775
Connection ~ 10700 10775
Wire Wire Line
	10975 10700 10975 10775
Connection ~ 10975 10775
Wire Wire Line
	11250 10700 11250 10775
Connection ~ 11250 10775
Connection ~ 11525 10775
Wire Wire Line
	11525 10325 11525 10400
Wire Wire Line
	9275 10325 9575 10325
Wire Wire Line
	9275 10250 9275 10325
Wire Wire Line
	9575 10400 9575 10325
Connection ~ 9575 10325
Wire Wire Line
	9875 10400 9875 10325
Connection ~ 9875 10325
Wire Wire Line
	10150 10400 10150 10325
Connection ~ 10150 10325
Wire Wire Line
	10425 10400 10425 10325
Connection ~ 10425 10325
Wire Wire Line
	10700 10400 10700 10325
Connection ~ 10700 10325
Wire Wire Line
	10975 10400 10975 10325
Connection ~ 10975 10325
Wire Wire Line
	11250 10400 11250 10325
Connection ~ 11250 10325
Connection ~ 9275 10325
Wire Wire Line
	5475 10875 5475 10825
Wire Wire Line
	5475 10825 5375 10825
Wire Wire Line
	6425 10875 6425 10825
Wire Wire Line
	6425 10825 6525 10825
Wire Bus Line
	4325 7725 3950 7725
Wire Wire Line
	4425 7900 4750 7900
Wire Wire Line
	4750 7900 4750 8100
Wire Wire Line
	4750 8100 4825 8100
Connection ~ 4750 7900
Wire Wire Line
	6300 8075 6375 8075
Wire Wire Line
	6300 8275 6375 8275
Wire Wire Line
	4425 8350 6300 8350
Wire Wire Line
	7575 8175 7650 8175
Wire Wire Line
	3075 5125 3225 5125
Wire Wire Line
	4825 3225 4050 3225
Wire Wire Line
	4825 3325 4050 3325
Wire Wire Line
	4825 3425 4050 3425
Wire Wire Line
	4825 3525 4050 3525
Wire Wire Line
	4825 3625 4050 3625
Wire Wire Line
	4825 3725 4050 3725
Wire Wire Line
	4825 3825 4050 3825
Wire Wire Line
	4825 3925 4050 3925
Wire Wire Line
	5225 3925 5300 3925
Wire Wire Line
	5300 3925 5300 4000
Wire Wire Line
	6700 9275 6425 9275
Wire Wire Line
	6425 9175 6650 9175
Wire Wire Line
	5475 9275 5200 9275
Wire Wire Line
	6700 9375 6425 9375
Wire Wire Line
	4425 6375 4825 6375
Wire Bus Line
	4325 6200 3950 6200
Wire Wire Line
	6025 6775 6175 6775
Wire Wire Line
	6025 6875 6975 6875
Wire Wire Line
	6900 7075 6975 7075
Wire Wire Line
	6025 7075 6100 7075
Wire Wire Line
	6100 7075 6100 7575
Wire Wire Line
	6100 7575 6975 7575
Wire Wire Line
	6025 6975 6175 6975
Wire Wire Line
	6175 6975 6175 7375
Wire Wire Line
	6175 7375 6975 7375
Wire Wire Line
	6175 6775 6175 6475
Wire Wire Line
	6175 6475 6900 6475
Wire Notes Line
	9900 5450 9900 5925
Wire Notes Line
	8975 5925 8975 5450
Wire Bus Line
	14300 950  1350 950 
Wire Wire Line
	1050 7475 1050 7750
Wire Wire Line
	1050 7750 975  7750
Wire Wire Line
	1050 7375 1050 7100
Wire Wire Line
	1050 7100 775  7100
Wire Wire Line
	1450 5475 2075 5475
Wire Wire Line
	1450 5575 2075 5575
Wire Wire Line
	6300 8000 6300 8075
Wire Wire Line
	6300 8350 6300 8275
Wire Wire Line
	6025 8000 6300 8000
Wire Wire Line
	1875 7375 1050 7375
Wire Wire Line
	1050 7475 1875 7475
Wire Wire Line
	1450 7275 1875 7275
Wire Wire Line
	1875 7175 1450 7175
Wire Wire Line
	1450 7075 1875 7075
Wire Wire Line
	1875 6975 1450 6975
Wire Wire Line
	1450 6875 1875 6875
Wire Wire Line
	1875 6775 1450 6775
Wire Wire Line
	1450 6675 1875 6675
Wire Wire Line
	1875 6575 1450 6575
Wire Wire Line
	1450 6375 1875 6375
Wire Wire Line
	1875 6275 1450 6275
Wire Wire Line
	1450 6175 1875 6175
Wire Wire Line
	1875 6075 1450 6075
Wire Wire Line
	1875 6475 1450 6475
Wire Wire Line
	15050 9650 15125 9650
Wire Wire Line
	15050 9550 15125 9550
Wire Wire Line
	15125 8250 14725 8250
Wire Bus Line
	14300 5950 14625 5950
Wire Bus Line
	14300 7950 14625 7950
Wire Wire Line
	14725 7950 15125 7950
Wire Wire Line
	14725 8050 15125 8050
Wire Wire Line
	14725 7850 15125 7850
Wire Wire Line
	14725 9450 15125 9450
Wire Wire Line
	14725 9350 15125 9350
Wire Wire Line
	14725 9250 15125 9250
Wire Wire Line
	14725 9150 15125 9150
Wire Wire Line
	14725 9050 15125 9050
Wire Wire Line
	14725 8950 15125 8950
Wire Wire Line
	14725 8850 15125 8850
Wire Wire Line
	14725 8750 15125 8750
Wire Wire Line
	14725 8650 15125 8650
Wire Wire Line
	14725 8550 15125 8550
Wire Wire Line
	14725 8450 15125 8450
Wire Wire Line
	14725 8350 15125 8350
Wire Wire Line
	14725 8150 15125 8150
Wire Wire Line
	14725 7450 15125 7450
Wire Wire Line
	14725 7350 15125 7350
Wire Wire Line
	14725 7250 15125 7250
Wire Wire Line
	14725 7150 15125 7150
Wire Wire Line
	14725 7550 15125 7550
Wire Wire Line
	14725 7050 15125 7050
Wire Wire Line
	14725 6950 15125 6950
Wire Wire Line
	14725 6850 15125 6850
Wire Wire Line
	14725 6750 15125 6750
Wire Wire Line
	14725 6650 15125 6650
Wire Wire Line
	14725 6550 15125 6550
Wire Wire Line
	14725 6450 15125 6450
Wire Wire Line
	14725 6350 15125 6350
Wire Wire Line
	14725 6250 15125 6250
Wire Wire Line
	14725 6150 15125 6150
Wire Wire Line
	14725 6050 15125 6050
Wire Wire Line
	14525 7750 14525 7575
Wire Wire Line
	14525 7750 15125 7750
Wire Wire Line
	14450 7650 14450 7750
Wire Wire Line
	14450 7650 15125 7650
Wire Wire Line
	6900 7075 6900 7225
Wire Wire Line
	6900 7225 9600 7225
Wire Wire Line
	9525 7475 9600 7475
Wire Wire Line
	9600 7225 9600 7475
Connection ~ 9600 7475
Wire Wire Line
	9500 4850 9250 4850
Wire Wire Line
	9250 4850 9250 4750
Wire Wire Line
	9500 5825 9250 5825
Wire Wire Line
	9250 5825 9250 5725
Wire Bus Line
	4325 5075 3950 5075
Wire Wire Line
	4750 5250 4750 5325
Wire Wire Line
	4750 5325 4825 5325
Wire Wire Line
	4825 5425 4750 5425
Wire Wire Line
	1450 3450 1875 3450
Wire Wire Line
	1875 3350 1450 3350
Wire Wire Line
	1450 3250 1875 3250
Wire Wire Line
	1450 3150 1875 3150
Wire Wire Line
	1875 3050 1450 3050
Wire Wire Line
	1450 2950 1875 2950
Wire Wire Line
	1450 2850 1875 2850
Wire Wire Line
	1875 2750 1450 2750
Wire Wire Line
	1450 2650 1875 2650
Wire Wire Line
	1450 2550 1875 2550
Wire Wire Line
	1875 2450 1450 2450
Wire Wire Line
	1450 2350 1875 2350
Wire Wire Line
	1875 2150 1450 2150
Wire Wire Line
	1450 2050 1875 2050
Wire Wire Line
	1450 1850 1875 1850
Wire Wire Line
	1875 1750 1450 1750
Wire Wire Line
	1450 1650 1875 1650
Wire Wire Line
	3275 1550 3850 1550
Wire Wire Line
	3850 1650 3275 1650
Wire Wire Line
	3850 1850 3275 1850
Wire Wire Line
	3275 2150 3850 2150
Wire Wire Line
	3850 2250 3275 2250
Wire Wire Line
	3275 2350 3850 2350
Wire Wire Line
	3850 2450 3275 2450
Wire Wire Line
	3275 1950 3850 1950
Wire Wire Line
	3275 2550 3850 2550
Wire Wire Line
	3850 2650 3275 2650
Wire Wire Line
	3275 2750 3850 2750
Wire Wire Line
	3850 2850 3275 2850
Wire Wire Line
	3850 2950 3275 2950
Wire Wire Line
	3275 3050 3850 3050
Wire Wire Line
	3850 3150 3275 3150
Wire Wire Line
	3275 3250 3850 3250
Wire Wire Line
	3850 3350 3275 3350
Wire Wire Line
	6175 5725 6375 5725
Wire Wire Line
	7575 5625 7650 5625
Wire Wire Line
	7650 5525 7650 5625
Wire Wire Line
	7650 5525 7725 5525
Wire Wire Line
	7650 5725 7725 5725
Connection ~ 7650 5625
Wire Wire Line
	6025 5525 6175 5525
Wire Wire Line
	6025 5425 6275 5425
Wire Wire Line
	6275 5425 6275 5525
Wire Wire Line
	6275 5525 6375 5525
Wire Wire Line
	6175 5525 6175 5725
Wire Notes Line
	9900 4950 9900 4450
Wire Notes Line
	8975 4450 8975 4950
Wire Wire Line
	2525 1200 2525 1275
Wire Wire Line
	2625 1350 2625 1275
Wire Wire Line
	2625 1275 2525 1275
Connection ~ 2525 1275
Wire Bus Line
	4325 1500 3950 1500
Connection ~ 8250 7475
Wire Wire Line
	8250 7575 8325 7575
Wire Wire Line
	8250 7375 8325 7375
Wire Wire Line
	8250 7375 8250 7475
Wire Wire Line
	8175 7475 8250 7475
$Comp
L RC1-CPU-rescue:74LS00 U5
U 4 1 5D6DAB18
P 7575 7475
F 0 "U5" H 7575 7525 50  0000 C CNN
F 1 "74LS00" H 7575 7375 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 7475 50  0001 C CNN
F 3 "" H 7575 7475 50  0001 C CNN
	4    7575 7475
	1    0    0    -1  
$EndComp
$Comp
L RC1-CPU-rescue:74LS00 U5
U 3 1 5D6D9A2F
P 7575 6975
F 0 "U5" H 7575 7025 50  0000 C CNN
F 1 "74LS00" H 7575 6875 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 7575 6975 50  0001 C CNN
F 3 "" H 7575 6975 50  0001 C CNN
	3    7575 6975
	1    0    0    -1  
$EndComp
$Comp
L RC1-CPU-rescue:74LS00 U5
U 2 1 5D6D964C
P 8925 7475
F 0 "U5" H 8925 7525 50  0000 C CNN
F 1 "74LS00" H 8925 7375 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8925 7475 50  0001 C CNN
F 3 "" H 8925 7475 50  0001 C CNN
	2    8925 7475
	1    0    0    -1  
$EndComp
$Comp
L RC1-CPU-rescue:74LS00 U5
U 1 1 5D69909D
P 2800 8575
F 0 "U5" H 2800 8625 50  0000 C CNN
F 1 "74LS00" H 2800 8475 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2800 8575 50  0001 C CNN
F 3 "" H 2800 8575 50  0001 C CNN
	1    2800 8575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8925 5625 9000 5625
Wire Notes Line
	9900 5925 8975 5925
Wire Notes Line
	8975 5450 9900 5450
Wire Notes Line
	8975 5425 9900 5425
Wire Notes Line
	9900 4975 8975 4975
Wire Notes Line
	8975 4950 9900 4950
Wire Notes Line
	9900 4450 8975 4450
Text Notes 6050 4825 0    60   ~ 0
K0
Text Notes 6050 5325 0    60   ~ 0
K5
Text Notes 6050 5425 0    60   ~ 0
K6
Text Notes 6050 5525 0    60   ~ 0
K7
Text Notes 6050 5225 0    60   ~ 0
K4
Text Notes 6050 5125 0    60   ~ 0
K3
Text Notes 6050 5025 0    60   ~ 0
K2
Text Notes 6050 4925 0    60   ~ 0
K1
Text GLabel 9500 5325 2    60   Output ~ 0
K5
Wire Wire Line
	6025 4825 6175 4825
Wire Wire Line
	6175 4825 6175 4650
Wire Wire Line
	6175 4650 9000 4650
Wire Wire Line
	6025 5325 9500 5325
Wire Notes Line
	8975 4975 8975 5425
Wire Notes Line
	9900 5425 9900 4975
NoConn ~ 5475 9975
$Comp
L conn:Conn_01x04 J4
U 1 1 5D985FE1
P 6450 5025
F 0 "J4" H 6450 5225 50  0000 C CNN
F 1 "K1-4" V 6550 4975 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6450 5025 50  0001 C CNN
F 3 "" H 6450 5025 50  0001 C CNN
	1    6450 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 4925 6250 4925
Wire Wire Line
	6025 5025 6250 5025
Wire Wire Line
	6250 5125 6025 5125
Wire Wire Line
	6025 5225 6250 5225
Wire Wire Line
	15050 9750 15125 9750
NoConn ~ 15125 9850
Wire Wire Line
	15850 1150 15850 1250
Wire Wire Line
	7675 1800 7800 1800
Wire Wire Line
	7675 3125 7800 3125
Wire Wire Line
	7800 3125 8000 3125
Wire Wire Line
	7800 1800 8000 1800
Wire Wire Line
	8375 1800 8450 1800
Wire Wire Line
	8375 3125 8450 3125
Wire Wire Line
	8375 2250 8375 2325
Wire Wire Line
	8375 3575 8375 3650
Wire Wire Line
	2125 8575 2125 8675
Wire Wire Line
	3150 5275 3225 5275
Wire Wire Line
	4750 5525 4825 5525
Wire Wire Line
	4750 5525 4750 5650
Wire Wire Line
	1800 7875 1875 7875
Wire Wire Line
	6325 2000 6425 2000
Wire Wire Line
	6350 3325 6425 3325
Wire Wire Line
	5200 1850 5200 2025
Wire Wire Line
	5200 1675 5200 1850
Wire Wire Line
	5200 2025 5200 2100
Wire Wire Line
	9575 10775 9875 10775
Wire Wire Line
	9875 10775 10150 10775
Wire Wire Line
	10150 10775 10425 10775
Wire Wire Line
	10425 10775 10700 10775
Wire Wire Line
	10700 10775 10975 10775
Wire Wire Line
	10975 10775 11250 10775
Wire Wire Line
	11250 10775 11525 10775
Wire Wire Line
	11525 10775 11525 10850
Wire Wire Line
	9575 10325 9875 10325
Wire Wire Line
	9875 10325 10150 10325
Wire Wire Line
	10150 10325 10425 10325
Wire Wire Line
	10425 10325 10700 10325
Wire Wire Line
	10700 10325 10975 10325
Wire Wire Line
	10975 10325 11250 10325
Wire Wire Line
	11250 10325 11525 10325
Wire Wire Line
	9275 10325 9275 10400
Wire Wire Line
	4750 7900 4825 7900
Wire Wire Line
	9600 7475 9675 7475
Wire Wire Line
	7650 5625 7650 5725
Wire Wire Line
	2525 1275 2525 1350
Wire Wire Line
	8250 7475 8250 7575
Wire Bus Line
	5900 950  5900 3225
Wire Bus Line
	4325 7725 4325 8250
Wire Bus Line
	4325 4725 4325 5425
Wire Bus Line
	3800 10675 3800 11025
Wire Bus Line
	4325 6200 4325 6775
Wire Bus Line
	4325 1500 4325 2300
Wire Bus Line
	6800 9375 6800 11025
Wire Bus Line
	5100 9375 5100 11025
Wire Bus Line
	1750 9775 1750 11025
Wire Bus Line
	14625 5950 14625 7450
Wire Bus Line
	14625 7950 14625 9550
Wire Bus Line
	1350 950  1350 9475
Wire Bus Line
	3950 950  3950 11025
$EndSCHEMATC
