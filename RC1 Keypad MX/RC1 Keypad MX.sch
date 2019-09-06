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
LIBS:sw_keyboard
LIBS:RC1 Keypad MX-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L SW_Keyboard SW16
U 1 1 5D61DCC2
P 5550 3975
F 0 "SW16" H 5575 4075 50  0000 L CNN
F 1 "5" H 5550 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5550 4175 50  0001 C CNN
F 3 "" H 5550 4175 50  0001 C CNN
	1    5550 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 4075 3425 4150
Wire Wire Line
	3175 3875 3100 3875
Wire Wire Line
	3100 2725 3100 4575
Connection ~ 3100 3875
Wire Wire Line
	3175 4225 3100 4225
Connection ~ 3100 4225
Wire Wire Line
	3425 4425 3425 4500
$Comp
L SW_Keyboard SW10
U 1 1 5D61DCC4
P 4650 3975
F 0 "SW10" H 4675 4075 50  0000 L CNN
F 1 "3" H 4650 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 4175 50  0001 C CNN
F 3 "" H 4650 4175 50  0001 C CNN
	1    4650 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 4775 3425 4850
$Comp
L SW_Keyboard SW7
U 1 1 5D61DCC5
P 4200 3975
F 0 "SW7" H 4225 4075 50  0000 L CNN
F 1 "2" H 4200 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4200 4175 50  0001 C CNN
F 3 "" H 4200 4175 50  0001 C CNN
	1    4200 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4575 3175 4575
Connection ~ 3100 4575
$Comp
L SW_Keyboard SW4
U 1 1 5D61DCC6
P 3750 3975
F 0 "SW4" H 3775 4075 50  0000 L CNN
F 1 "1" H 3750 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3750 4175 50  0001 C CNN
F 3 "" H 3750 4175 50  0001 C CNN
	1    3750 3975
	1    0    0    -1  
$EndComp
$Comp
L SW_Keyboard SW12
U 1 1 5D61DCC8
P 4650 4675
F 0 "SW12" H 4675 4775 50  0000 L CNN
F 1 "DA" H 4650 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 4875 50  0001 C CNN
F 3 "" H 4650 4875 50  0001 C CNN
	1    4650 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 4075 3875 4150
Wire Wire Line
	3625 3875 3550 3875
Wire Wire Line
	3550 2825 3550 4575
Connection ~ 3550 3875
Wire Wire Line
	3625 4225 3550 4225
Connection ~ 3550 4225
Wire Wire Line
	3875 4425 3875 4500
$Comp
L SW_Keyboard SW3
U 1 1 5D61DCC9
P 3300 4675
F 0 "SW3" H 3325 4775 50  0000 L CNN
F 1 "E" H 3300 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3300 4875 50  0001 C CNN
F 3 "" H 3300 4875 50  0001 C CNN
	1    3300 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 4775 3875 4850
Wire Wire Line
	3550 4575 3625 4575
$Comp
L SW_Keyboard SW6
U 1 1 5D61DCCD
P 3750 4675
F 0 "SW6" H 3775 4775 50  0000 L CNN
F 1 "F" H 3750 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3750 4875 50  0001 C CNN
F 3 "" H 3750 4875 50  0001 C CNN
	1    3750 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 4150 4325 4075
Wire Wire Line
	4075 3875 4000 3875
Wire Wire Line
	4000 2925 4000 4575
Connection ~ 4000 3875
Wire Wire Line
	4075 4225 4000 4225
Connection ~ 4000 4225
Wire Wire Line
	4325 4500 4325 4425
$Comp
L SW_Keyboard SW20
U 1 1 5D61DCCE
P 6000 4325
F 0 "SW20" H 6025 4425 50  0000 L CNN
F 1 "D" H 6000 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6000 4525 50  0001 C CNN
F 3 "" H 6000 4525 50  0001 C CNN
	1    6000 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 4850 4325 4775
Wire Wire Line
	4000 4575 4075 4575
$Comp
L SW_Keyboard SW11
U 1 1 5D61DCD0
P 4650 4325
F 0 "SW11" H 4675 4425 50  0000 L CNN
F 1 "A" H 4650 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4650 4525 50  0001 C CNN
F 3 "" H 4650 4525 50  0001 C CNN
	1    4650 4325
	1    0    0    -1  
$EndComp
$Comp
L SW_Keyboard SW19
U 1 1 5D61DCD1
P 6000 3975
F 0 "SW19" H 6025 4075 50  0000 L CNN
F 1 "6" H 6000 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6000 4175 50  0001 C CNN
F 3 "" H 6000 4175 50  0001 C CNN
	1    6000 3975
	1    0    0    -1  
$EndComp
$Comp
L SW_Keyboard SW2
U 1 1 5D61DCD2
P 3300 4325
F 0 "SW2" H 3325 4425 50  0000 L CNN
F 1 "7" H 3300 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3300 4525 50  0001 C CNN
F 3 "" H 3300 4525 50  0001 C CNN
	1    3300 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4150 4775 4075
Wire Wire Line
	4525 3875 4450 3875
Wire Wire Line
	4450 3025 4450 4575
Connection ~ 4450 3875
Wire Wire Line
	4525 4225 4450 4225
Connection ~ 4450 4225
Wire Wire Line
	4775 4500 4775 4425
$Comp
L SW_Keyboard SW5
U 1 1 5D61DCD3
P 3750 4325
F 0 "SW5" H 3775 4425 50  0000 L CNN
F 1 "8" H 3750 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3750 4525 50  0001 C CNN
F 3 "" H 3750 4525 50  0001 C CNN
	1    3750 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4850 4775 4775
$Comp
L SW_Keyboard SW8
U 1 1 5D61DCD4
P 4200 4325
F 0 "SW8" H 4225 4425 50  0000 L CNN
F 1 "9" H 4200 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4200 4525 50  0001 C CNN
F 3 "" H 4200 4525 50  0001 C CNN
	1    4200 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4575 4525 4575
$Comp
L SW_Keyboard SW1
U 1 1 5D61DCD5
P 3300 3975
F 0 "SW1" H 3325 4075 50  0000 L CNN
F 1 "Ø" H 3300 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3300 4175 50  0001 C CNN
F 3 "" H 3300 4175 50  0001 C CNN
	1    3300 3975
	1    0    0    -1  
$EndComp
$Comp
L SW_Keyboard SW9
U 1 1 5D61DCD7
P 4200 4675
F 0 "SW9" H 4225 4775 50  0000 L CNN
F 1 "AD" H 4200 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 4200 4875 50  0001 C CNN
F 3 "" H 4200 4875 50  0001 C CNN
	1    4200 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 4150 5225 4075
Wire Wire Line
	4975 3875 4900 3875
Wire Wire Line
	4900 3125 4900 4575
Connection ~ 4900 3875
Wire Wire Line
	4975 4225 4900 4225
Connection ~ 4900 4225
Wire Wire Line
	5225 4500 5225 4425
$Comp
L SW_Keyboard SW14
U 1 1 5D61DCD8
P 5100 4325
F 0 "SW14" H 5125 4425 50  0000 L CNN
F 1 "B" H 5100 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5100 4525 50  0001 C CNN
F 3 "" H 5100 4525 50  0001 C CNN
	1    5100 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 4850 5225 4775
Wire Wire Line
	4900 4575 4975 4575
$Comp
L SW_Keyboard SW17
U 1 1 5D61DCDC
P 5550 4325
F 0 "SW17" H 5575 4425 50  0000 L CNN
F 1 "C" H 5550 4275 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5550 4525 50  0001 C CNN
F 3 "" H 5550 4525 50  0001 C CNN
	1    5550 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 4150 5675 4075
Wire Wire Line
	5425 3875 5350 3875
Wire Wire Line
	5350 3225 5350 4575
Connection ~ 5350 3875
Wire Wire Line
	5425 4225 5350 4225
Connection ~ 5350 4225
Wire Wire Line
	5675 4500 5675 4425
$Comp
L SW_Keyboard SW15
U 1 1 5D61DCDD
P 5100 4675
F 0 "SW15" H 5125 4775 50  0000 L CNN
F 1 "+" H 5100 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5100 4875 50  0001 C CNN
F 3 "" H 5100 4875 50  0001 C CNN
	1    5100 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 4850 5675 4775
Wire Wire Line
	5350 4575 5425 4575
Wire Wire Line
	6125 4150 6125 4075
Wire Wire Line
	5875 3875 5800 3875
Wire Wire Line
	5800 3325 5800 4575
Connection ~ 5800 3875
Wire Wire Line
	5875 4225 5800 4225
Connection ~ 5800 4225
Wire Wire Line
	6125 4500 6125 4425
$Comp
L SW_Keyboard SW18
U 1 1 5D61DCE2
P 5550 4675
F 0 "SW18" H 5575 4775 50  0000 L CNN
F 1 "GO" H 5550 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5550 4875 50  0001 C CNN
F 3 "" H 5550 4875 50  0001 C CNN
	1    5550 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 4850 6125 4775
Wire Wire Line
	5800 4575 5875 4575
$Comp
L SW_Keyboard SW21
U 1 1 5D61DCE7
P 6000 4675
F 0 "SW21" H 6025 4775 50  0000 L CNN
F 1 "PC" H 6000 4625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 6000 4875 50  0001 C CNN
F 3 "" H 6000 4875 50  0001 C CNN
	1    6000 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 4150 7050 4150
Connection ~ 3875 4150
Connection ~ 4325 4150
Connection ~ 4775 4150
Connection ~ 5225 4150
Connection ~ 5675 4150
Connection ~ 6125 4150
Wire Wire Line
	3425 4500 7150 4500
Connection ~ 3875 4500
Connection ~ 4325 4500
Connection ~ 4775 4500
Connection ~ 5225 4500
Connection ~ 5675 4500
Connection ~ 6125 4500
Wire Wire Line
	3425 4850 7250 4850
Connection ~ 3875 4850
Connection ~ 4325 4850
Connection ~ 4775 4850
Connection ~ 5225 4850
Connection ~ 5675 4850
Connection ~ 6125 4850
$Comp
L SW_Keyboard SW13
U 1 1 5D61DCC3
P 5100 3975
F 0 "SW13" H 5125 4075 50  0000 L CNN
F 1 "4" H 5100 3925 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 5100 4175 50  0001 C CNN
F 3 "" H 5100 4175 50  0001 C CNN
	1    5100 3975
	1    0    0    -1  
$EndComp
Text Label 6675 3525 0    60   ~ 0
ROW0
Text Label 6675 3425 0    60   ~ 0
ROW1
Text Label 6675 3325 0    60   ~ 0
ROW2
Wire Wire Line
	3100 2725 6150 2725
Wire Wire Line
	3550 2825 6150 2825
Wire Wire Line
	4000 2925 6150 2925
Wire Wire Line
	4450 3025 6150 3025
Text Label 5850 3325 0    60   ~ 0
PA0
Text Label 5850 3225 0    60   ~ 0
PA1
Text Label 5850 3125 0    60   ~ 0
PA2
Text Label 5850 3025 0    60   ~ 0
PA3
Text Label 5850 2925 0    60   ~ 0
PA4
Text Label 5850 2825 0    60   ~ 0
PA5
Wire Wire Line
	4900 3125 6150 3125
Text Label 5850 2725 0    60   ~ 0
PA6
$Comp
L SW_Keyboard SW23
U 1 1 5D62C343
P 7475 4050
F 0 "SW23" H 7500 4150 50  0000 L CNN
F 1 "RS" H 7475 4000 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7475 4250 50  0001 C CNN
F 3 "" H 7475 4250 50  0001 C CNN
	1    7475 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2925 7350 3950
$Comp
L SW_Keyboard SW24
U 1 1 5D62C65F
P 7850 4050
F 0 "SW24" H 7875 4150 50  0000 L CNN
F 1 "ST" H 7850 4000 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 7850 4250 50  0001 C CNN
F 3 "" H 7850 4250 50  0001 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7725 3950 7725 3875
Wire Wire Line
	7725 3875 7350 3875
Connection ~ 7350 3875
$Comp
L SW_SPST SW22
U 1 1 5D62D132
P 7275 2725
F 0 "SW22" H 7275 2850 50  0000 C CNN
F 1 "SST" H 7275 2675 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_DIP_x1_W7.62mm_Slide" H 7275 2725 50  0001 C CNN
F 3 "" H 7275 2725 50  0001 C CNN
	1    7275 2725
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x08_Counter_Clockwise J1
U 1 1 5D62D671
P 6350 3025
F 0 "J1" H 6400 3275 50  0000 C CNN
F 1 "KB" H 6400 2675 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 6350 3025 50  0001 C CNN
F 3 "" H 6350 3025 50  0001 C CNN
	1    6350 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3225 6150 3225
Wire Wire Line
	5800 3325 6150 3325
Wire Wire Line
	6150 3425 6075 3425
Wire Wire Line
	7050 4150 7050 3525
Wire Wire Line
	7150 4500 7150 3425
Wire Wire Line
	7150 3425 6650 3425
Wire Wire Line
	7250 4850 7250 3325
Wire Wire Line
	7250 3325 6650 3325
Wire Wire Line
	7350 3225 6650 3225
Wire Wire Line
	7975 4150 7975 4225
Wire Wire Line
	7975 4225 8125 4225
Wire Wire Line
	8125 4225 8125 3125
Wire Wire Line
	8125 3125 6650 3125
Wire Wire Line
	7600 4150 7600 4325
Wire Wire Line
	7600 4325 8225 4325
Wire Wire Line
	8225 4325 8225 3025
Wire Wire Line
	8225 3025 6650 3025
$Comp
L LED_Small D1
U 1 1 5D630229
P 7175 2925
F 0 "D1" H 7025 2975 50  0000 L CNN
F 1 "PWR" H 7250 2975 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm" V 7175 2925 50  0001 C CNN
F 3 "" V 7175 2925 50  0001 C CNN
	1    7175 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2725 7075 2725
Wire Wire Line
	6650 2825 7550 2825
Text Label 6675 3225 0    60   ~ 0
VCC
Wire Wire Line
	7350 2925 7275 2925
Connection ~ 7350 3225
Wire Wire Line
	6650 2925 7075 2925
Wire Wire Line
	7050 3525 6075 3525
Wire Wire Line
	6075 3525 6075 3425
Text Label 6675 2925 0    60   ~ 0
LED
Text Label 6675 3125 0    60   ~ 0
ST
Text Label 6675 3025 0    60   ~ 0
RS
Text Label 6675 2725 0    60   ~ 0
SST_IN
Text Label 6675 2825 0    60   ~ 0
SST_OUT
Wire Wire Line
	7475 2725 7550 2725
Wire Wire Line
	7550 2725 7550 2825
Text Notes 7350 7500 0    60   ~ 0
RC-1 Hex keypad
Text Notes 7000 6850 0    60   ~ 0
The keypad module for the RC One computer, has the classic KIM-1 layout with a\ncustom connector. This is the MX version featuring Cherry MX key switches, larger and\nmore comfortable than the standard keys at the cost of increased PCB costs.
$EndSCHEMATC
