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
LIBS:mounting
LIBS:rc1_ui_port
LIBS:rc1_keypad_port
LIBS:RC1 UI Keypad Adapter-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Keypad Adapter"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4925 5950 0    60   ~ 0
ROW0
Text Label 4925 6050 0    60   ~ 0
ROW1
Text Label 4925 6150 0    60   ~ 0
ROW2
Text Label 4925 5850 0    60   ~ 0
PA0
Text Label 4925 5750 0    60   ~ 0
PA1
Text Label 4925 5650 0    60   ~ 0
PA2
Text Label 4925 5550 0    60   ~ 0
PA3
Text Label 4925 5450 0    60   ~ 0
PA4
Text Label 4925 5350 0    60   ~ 0
PA5
Text Label 4925 5250 0    60   ~ 0
PA6
$Comp
L RC1_Keypad_Port J1
U 1 1 5D643839
P 5800 5500
F 0 "J1" H 5800 5500 50  0000 C CNN
F 1 "SYSTEM" H 5800 4700 50  0000 C CNN
F 2 "Keypad:Pin_Header_Straight_2x08_Pitch2.54mm" H 5800 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0001 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
Text Label 6675 6150 2    60   ~ 0
KP_ST
Text Label 6675 6050 2    60   ~ 0
KP_RS
Entry Wire Line
	4800 6050 4900 5950
Entry Wire Line
	4800 5950 4900 5850
Entry Wire Line
	4800 5850 4900 5750
Entry Wire Line
	4800 5750 4900 5650
Entry Wire Line
	4800 5650 4900 5550
Entry Wire Line
	4800 5550 4900 5450
Entry Wire Line
	4800 5450 4900 5350
Entry Wire Line
	4800 5350 4900 5250
Entry Wire Line
	6700 6050 6800 6150
Entry Wire Line
	6700 6150 6800 6250
Entry Wire Line
	4800 6250 4900 6150
Entry Wire Line
	4800 6150 4900 6050
$Comp
L Mounting M1
U 1 1 5D6783E4
P 15850 575
F 0 "M1" H 15850 675 50  0001 C CNN
F 1 "Mounting" H 15850 500 50  0001 C CNN
F 2 "Mounting:1pin" H 15850 575 50  0001 C CNN
F 3 "" H 15850 575 50  0001 C CNN
	1    15850 575 
	1    0    0    -1  
$EndComp
$Comp
L Mounting M4
U 1 1 5D678952
P 15975 575
F 0 "M4" H 15975 675 50  0001 C CNN
F 1 "Mounting" H 15975 500 50  0001 C CNN
F 2 "Mounting:1pin" H 15975 575 50  0001 C CNN
F 3 "" H 15975 575 50  0001 C CNN
	1    15975 575 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 5850 4900 5850
Wire Wire Line
	5325 5950 4900 5950
Wire Wire Line
	5325 5650 4900 5650
Wire Wire Line
	5325 5750 4900 5750
Wire Wire Line
	5325 5450 4900 5450
Wire Wire Line
	5325 5550 4900 5550
Wire Wire Line
	5325 5250 4900 5250
Wire Wire Line
	5325 5350 4900 5350
Wire Wire Line
	4900 6150 5325 6150
Wire Wire Line
	4900 6050 5325 6050
Wire Wire Line
	6275 6050 6700 6050
Wire Wire Line
	6700 6150 6275 6150
Wire Bus Line
	4800 6375 6800 6375
Wire Bus Line
	6800 6375 6800 5075
Wire Bus Line
	4800 5350 4800 6375
Text Label 6675 5750 2    60   ~ 0
SST_IN
Text Label 6675 5650 2    60   ~ 0
SST_OUT
Entry Wire Line
	6700 5650 6800 5750
Entry Wire Line
	6700 5750 6800 5850
Wire Wire Line
	6275 5650 6700 5650
Wire Wire Line
	6700 5750 6275 5750
Text Label 6675 5250 2    60   ~ 0
LED
Entry Wire Line
	6700 5250 6800 5350
Wire Wire Line
	6275 5250 6700 5250
Text Label 6675 4975 2    60   ~ 0
C.P.
Entry Wire Line
	6700 4975 6800 5075
Wire Wire Line
	5800 5050 5800 4975
Wire Wire Line
	5800 4975 6700 4975
Text Notes 11850 10275 0    60   ~ 0
The keypad connector on the RC-ONE is in a bit of an impractical location when using\nthe computer with a backplane, so instead of fixing the problem you can use this\ninstead - neat or what? Might be rendered redundant in a future UI update.
Text Label 7325 5950 0    60   ~ 0
ROW0
Text Label 7325 6050 0    60   ~ 0
ROW1
Text Label 7325 6150 0    60   ~ 0
ROW2
Text Label 7325 5850 0    60   ~ 0
PA0
Text Label 7325 5750 0    60   ~ 0
PA1
Text Label 7325 5650 0    60   ~ 0
PA2
Text Label 7325 5550 0    60   ~ 0
PA3
Text Label 7325 5450 0    60   ~ 0
PA4
Text Label 7325 5350 0    60   ~ 0
PA5
Text Label 7325 5250 0    60   ~ 0
PA6
$Comp
L RC1_Keypad_Port J2
U 1 1 5E2F231D
P 8200 5500
F 0 "J2" H 8200 5500 50  0000 C CNN
F 1 "KEYPAD" H 8200 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 8200 5500 50  0001 C CNN
F 3 "" H 8200 5500 50  0001 C CNN
	1    8200 5500
	1    0    0    -1  
$EndComp
Text Label 9075 6150 2    60   ~ 0
KP_ST
Text Label 9075 6050 2    60   ~ 0
KP_RS
Entry Wire Line
	7200 6050 7300 5950
Entry Wire Line
	7200 5950 7300 5850
Entry Wire Line
	7200 5850 7300 5750
Entry Wire Line
	7200 5750 7300 5650
Entry Wire Line
	7200 5650 7300 5550
Entry Wire Line
	7200 5550 7300 5450
Entry Wire Line
	7200 5450 7300 5350
Entry Wire Line
	7200 5350 7300 5250
Entry Wire Line
	9100 6050 9200 6150
Entry Wire Line
	9100 6150 9200 6250
Entry Wire Line
	7200 6250 7300 6150
Entry Wire Line
	7200 6150 7300 6050
Wire Wire Line
	7725 5850 7300 5850
Wire Wire Line
	7725 5950 7300 5950
Wire Wire Line
	7725 5650 7300 5650
Wire Wire Line
	7725 5750 7300 5750
Wire Wire Line
	7725 5450 7300 5450
Wire Wire Line
	7725 5550 7300 5550
Wire Wire Line
	7725 5250 7300 5250
Wire Wire Line
	7725 5350 7300 5350
Wire Wire Line
	7300 6150 7725 6150
Wire Wire Line
	7300 6050 7725 6050
Wire Wire Line
	8675 6050 9100 6050
Wire Wire Line
	9100 6150 8675 6150
Wire Bus Line
	7200 6375 9200 6375
Wire Bus Line
	9200 6375 9200 5075
Wire Bus Line
	7200 5350 7200 6375
Text Label 9075 5750 2    60   ~ 0
SST_IN
Text Label 9075 5650 2    60   ~ 0
SST_OUT
Entry Wire Line
	9100 5650 9200 5750
Entry Wire Line
	9100 5750 9200 5850
Wire Wire Line
	8675 5650 9100 5650
Wire Wire Line
	9100 5750 8675 5750
Text Label 9075 5250 2    60   ~ 0
LED
Entry Wire Line
	9100 5250 9200 5350
Wire Wire Line
	8675 5250 9100 5250
Text Label 9075 4975 2    60   ~ 0
C.P.
Entry Wire Line
	9100 4975 9200 5075
Wire Wire Line
	8200 5050 8200 4975
Wire Wire Line
	8200 4975 9100 4975
Wire Bus Line
	5800 6375 5800 6450
Wire Bus Line
	5800 6450 10750 6450
Wire Bus Line
	8200 6450 8200 6375
Text Label 9875 5950 0    60   ~ 0
ROW0
Text Label 9875 6050 0    60   ~ 0
ROW1
Text Label 9875 6150 0    60   ~ 0
ROW2
Text Label 9875 5850 0    60   ~ 0
PA0
Text Label 9875 5750 0    60   ~ 0
PA1
Text Label 9875 5650 0    60   ~ 0
PA2
Text Label 9875 5550 0    60   ~ 0
PA3
Text Label 9875 5450 0    60   ~ 0
PA4
Text Label 9875 5350 0    60   ~ 0
PA5
Text Label 9875 5250 0    60   ~ 0
PA6
$Comp
L RC1_Keypad_Port J3
U 1 1 5E2F2558
P 10750 5500
F 0 "J3" H 10750 5500 50  0000 C CNN
F 1 "KEYPAD" H 10750 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 10750 5500 50  0001 C CNN
F 3 "" H 10750 5500 50  0001 C CNN
	1    10750 5500
	1    0    0    -1  
$EndComp
Text Label 11625 6150 2    60   ~ 0
KP_ST
Text Label 11625 6050 2    60   ~ 0
KP_RS
Entry Wire Line
	9750 6050 9850 5950
Entry Wire Line
	9750 5950 9850 5850
Entry Wire Line
	9750 5850 9850 5750
Entry Wire Line
	9750 5750 9850 5650
Entry Wire Line
	9750 5650 9850 5550
Entry Wire Line
	9750 5550 9850 5450
Entry Wire Line
	9750 5450 9850 5350
Entry Wire Line
	9750 5350 9850 5250
Entry Wire Line
	11650 6050 11750 6150
Entry Wire Line
	11650 6150 11750 6250
Entry Wire Line
	9750 6250 9850 6150
Entry Wire Line
	9750 6150 9850 6050
Wire Wire Line
	10275 5850 9850 5850
Wire Wire Line
	10275 5950 9850 5950
Wire Wire Line
	10275 5650 9850 5650
Wire Wire Line
	10275 5750 9850 5750
Wire Wire Line
	10275 5450 9850 5450
Wire Wire Line
	10275 5550 9850 5550
Wire Wire Line
	10275 5250 9850 5250
Wire Wire Line
	10275 5350 9850 5350
Wire Wire Line
	9850 6150 10275 6150
Wire Wire Line
	9850 6050 10275 6050
Wire Wire Line
	11225 6050 11650 6050
Wire Wire Line
	11650 6150 11225 6150
Wire Bus Line
	9750 6375 11750 6375
Wire Bus Line
	11750 6375 11750 5075
Wire Bus Line
	9750 5350 9750 6375
Text Label 11625 5750 2    60   ~ 0
SST_IN
Text Label 11625 5650 2    60   ~ 0
SST_OUT
Entry Wire Line
	11650 5650 11750 5750
Entry Wire Line
	11650 5750 11750 5850
Wire Wire Line
	11225 5650 11650 5650
Wire Wire Line
	11650 5750 11225 5750
Text Label 11625 5250 2    60   ~ 0
LED
Entry Wire Line
	11650 5250 11750 5350
Wire Wire Line
	11225 5250 11650 5250
Text Label 11625 4975 2    60   ~ 0
C.P.
Entry Wire Line
	11650 4975 11750 5075
Wire Wire Line
	10750 5050 10750 4975
Wire Wire Line
	10750 4975 11650 4975
Wire Bus Line
	10750 6450 10750 6375
$EndSCHEMATC
