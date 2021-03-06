EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "StupidDogFocuser"
Date "2020-02-10"
Rev "1"
Comp "Jeff Voight"
Comment1 "DIY Focuser"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 DRV1
U 1 1 5E42E952
P 4650 4300
F 0 "DRV1" V 4650 4200 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 4700 3350 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 4850 3500 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4750 4000 50  0001 C CNN
	1    4650 4300
	1    0    0    -1  
$EndComp
$Comp
L Sensor:DHT11 U1
U 1 1 5E42F36D
P 8550 4800
F 0 "U1" V 8169 4800 50  0000 C CNN
F 1 "DHT11" V 8260 4800 50  0000 C CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 8550 4400 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 8700 5050 50  0001 C CNN
	1    8550 4800
	0    1    1    0   
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar Motor1
U 1 1 5E42FC2F
P 5900 4200
F 0 "Motor1" V 5868 4012 50  0000 R CNN
F 1 "Stepper_Motor_bipolar" V 5777 4012 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 5910 4190 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 5910 4190 50  0001 C CNN
	1    5900 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5E430D3D
P 8800 1600
F 0 "SW1" V 8846 1370 50  0000 R CNN
F 1 "Rotary_Encoder_Switch" V 8755 1370 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 8650 1760 50  0001 C CNN
F 3 "~" H 8800 1860 50  0001 C CNN
	1    8800 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E4322DD
P 9000 2350
F 0 "R3" V 9207 2350 50  0000 C CNN
F 1 "10k" V 9116 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8930 2350 50  0001 C CNN
F 3 "~" H 9000 2350 50  0001 C CNN
	1    9000 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E433403
P 9500 2150
F 0 "C3" H 9615 2196 50  0000 L CNN
F 1 ".01uF" H 9615 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9538 2000 50  0001 C CNN
F 3 "~" H 9500 2150 50  0001 C CNN
	1    9500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E43407D
P 8100 2100
F 0 "C2" H 7900 2150 50  0000 L CNN
F 1 ".01uF" H 7800 2050 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8138 1950 50  0001 C CNN
F 3 "~" H 8100 2100 50  0001 C CNN
	1    8100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E4344D5
P 8600 2350
F 0 "R2" V 8393 2350 50  0000 C CNN
F 1 "10k" V 8484 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8530 2350 50  0001 C CNN
F 3 "~" H 8600 2350 50  0001 C CNN
	1    8600 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E4346E3
P 8250 2350
F 0 "R1" H 8400 2300 50  0000 R CNN
F 1 "10k" H 8450 2400 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8180 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E4347D7
P 9350 2350
F 0 "R4" V 9143 2350 50  0000 C CNN
F 1 "10k" V 9234 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9280 2350 50  0001 C CNN
F 3 "~" H 9350 2350 50  0001 C CNN
	1    9350 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E43491A
P 5100 3500
F 0 "C1" H 5215 3546 50  0000 L CNN
F 1 ".01uF" H 5215 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5138 3350 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3700 4650 3350
Wire Wire Line
	4650 3350 5100 3350
Text GLabel 5100 3350 2    50   Input ~ 0
12V
Text GLabel 5100 3800 2    50   Input ~ 0
GND
Wire Wire Line
	5100 3650 5100 3800
Text GLabel 4800 5150 2    50   Input ~ 0
GND
Wire Wire Line
	4650 5100 4650 5150
Wire Wire Line
	4650 5150 4750 5150
Wire Wire Line
	4750 5100 4750 5150
Connection ~ 4750 5150
Wire Wire Line
	4750 5150 4800 5150
Text GLabel 8950 4800 2    50   Input ~ 0
VCC
Text GLabel 8150 4800 0    50   Input ~ 0
GND
Text GLabel 2450 2250 2    50   Input ~ 0
VCC
Text GLabel 1900 2200 0    50   Input ~ 0
12V
Wire Wire Line
	2450 2250 2300 2250
Wire Wire Line
	2300 2250 2300 2400
Wire Wire Line
	8150 4800 8250 4800
Wire Wire Line
	8850 4800 8950 4800
Text GLabel 8550 5200 0    50   Input ~ 0
DHTIO
Wire Wire Line
	8550 5200 8550 5100
Text GLabel 9550 2350 2    50   Output ~ 0
ENCB
Text GLabel 8050 2350 0    50   Output ~ 0
ENCA
Text GLabel 8750 2000 0    50   Input ~ 0
GND
Text GLabel 8800 2500 3    50   Input ~ 0
VCC
Wire Wire Line
	8800 2500 8800 2350
Wire Wire Line
	8800 2350 8750 2350
Wire Wire Line
	8850 2350 8800 2350
Connection ~ 8800 2350
Wire Wire Line
	8700 1900 8450 1900
Wire Wire Line
	8450 1900 8450 2350
Wire Wire Line
	8900 1900 9150 1900
Wire Wire Line
	9150 1900 9150 2350
Wire Wire Line
	8800 1900 8800 2000
Wire Wire Line
	8800 2000 8750 2000
Wire Wire Line
	8450 2350 8400 2350
Connection ~ 8450 2350
Wire Wire Line
	8100 2350 8050 2350
Wire Wire Line
	8100 2250 8100 2350
Connection ~ 8100 2350
Wire Wire Line
	9150 2350 9200 2350
Connection ~ 9150 2350
Wire Wire Line
	9500 2350 9550 2350
Wire Wire Line
	9500 2300 9500 2350
Connection ~ 9500 2350
Text GLabel 9500 1900 2    50   Input ~ 0
GND
Text GLabel 8100 1850 0    50   Input ~ 0
GND
Wire Wire Line
	8100 1850 8100 1950
Wire Wire Line
	9500 1900 9500 2000
Wire Notes Line
	7350 900  7350 3000
Wire Notes Line
	7350 3000 10300 3000
Wire Notes Line
	10300 3000 10300 900 
Wire Notes Line
	10300 900  7350 900 
Wire Wire Line
	5050 4200 5300 4200
Wire Wire Line
	5300 4200 5300 4100
Wire Wire Line
	5300 4100 5600 4100
Wire Wire Line
	5050 4300 5600 4300
Wire Wire Line
	5050 4500 5800 4500
Wire Wire Line
	5050 4600 6000 4600
Wire Wire Line
	6000 4600 6000 4500
Text GLabel 3950 4000 0    50   Input ~ 0
VCC
Wire Wire Line
	4250 4000 4100 4000
Wire Wire Line
	4250 4100 4100 4100
Wire Wire Line
	4100 4100 4100 4000
Connection ~ 4100 4000
Wire Wire Line
	4100 4000 3950 4000
Text GLabel 3950 4400 0    50   Input ~ 0
Step
Text GLabel 3950 4500 0    50   Input ~ 0
Dir
Text GLabel 3950 4300 0    50   Input ~ 0
Enable
Wire Wire Line
	3950 4300 4250 4300
Wire Wire Line
	3950 4400 4250 4400
Wire Wire Line
	3950 4500 4250 4500
Text GLabel 3950 4700 0    50   Input ~ 0
M0
Text GLabel 3950 4800 0    50   Input ~ 0
M1
Text GLabel 3950 4900 0    50   Input ~ 0
M2
Wire Wire Line
	3950 4700 4250 4700
Wire Wire Line
	3950 4800 4250 4800
Wire Wire Line
	3950 4900 4250 4900
Text GLabel 1350 3000 0    50   Input ~ 0
Step
Text GLabel 1350 3100 0    50   Input ~ 0
Dir
Text GLabel 1350 3200 0    50   Input ~ 0
Enable
Wire Wire Line
	1600 3000 1350 3000
Wire Wire Line
	1600 3100 1350 3100
Wire Wire Line
	1600 3200 1350 3200
Text GLabel 2100 4750 3    50   Input ~ 0
GND
Wire Wire Line
	2000 4500 2000 4650
Wire Wire Line
	2000 4650 2100 4650
Wire Wire Line
	2100 4650 2100 4750
Wire Wire Line
	2100 4500 2100 4650
Connection ~ 2100 4650
Wire Wire Line
	2200 4500 2200 4650
Wire Wire Line
	2200 4650 2100 4650
Text GLabel 1350 4100 0    50   Input ~ 0
DHTIO
Wire Wire Line
	2600 3900 2700 3900
Text GLabel 1350 3300 0    50   Input ~ 0
ENCA_A
Text GLabel 1350 3400 0    50   Input ~ 0
ENCB_A
Wire Wire Line
	1350 3300 1600 3300
Wire Wire Line
	1350 3400 1600 3400
Text GLabel 2700 3900 2    50   Input ~ 0
M0
Text GLabel 2700 3800 2    50   Input ~ 0
M1
Text GLabel 2700 3700 2    50   Input ~ 0
M2
$Comp
L power:GND #PWR0101
U 1 1 5E480034
P 1200 1600
F 0 "#PWR0101" H 1200 1350 50  0001 C CNN
F 1 "GND" H 1205 1427 50  0000 C CNN
F 2 "" H 1200 1600 50  0001 C CNN
F 3 "" H 1200 1600 50  0001 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5E4807CE
P 2000 2000
F 0 "#PWR0102" H 2000 1850 50  0001 C CNN
F 1 "+12V" H 2015 2173 50  0000 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2000 2200
Text GLabel 1250 1550 2    50   Input ~ 0
GND
Wire Wire Line
	1250 1550 1200 1550
Wire Wire Line
	1200 1550 1200 1600
$Comp
L power:+5V #PWR0103
U 1 1 5E48418B
P 2300 2000
F 0 "#PWR0103" H 2300 1850 50  0001 C CNN
F 1 "+5V" H 2315 2173 50  0000 C CNN
F 2 "" H 2300 2000 50  0001 C CNN
F 3 "" H 2300 2000 50  0001 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2000 2300 2250
Connection ~ 2300 2250
Wire Wire Line
	1900 2200 2000 2200
Connection ~ 2000 2200
Wire Wire Line
	2000 2200 2000 2400
NoConn ~ 2600 2800
NoConn ~ 2600 3000
NoConn ~ 2600 3200
NoConn ~ 2600 4100
NoConn ~ 2600 4200
NoConn ~ 1600 3800
NoConn ~ 1600 3900
NoConn ~ 1600 4000
NoConn ~ 2200 2400
Text GLabel 8700 1200 0    50   Input ~ 0
S1
Wire Wire Line
	8700 1200 8700 1300
Text GLabel 8900 1200 2    50   Input ~ 0
GND
Wire Wire Line
	8900 1200 8900 1300
NoConn ~ 4250 3900
NoConn ~ 1600 2800
NoConn ~ 1600 2900
Wire Wire Line
	2600 3700 2700 3700
Wire Wire Line
	2600 3800 2700 3800
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5E42D953
P 2100 3400
F 0 "A1" H 2100 4581 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 2100 4490 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 2100 3400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 2100 3400 50  0001 C CNN
	1    2100 3400
	1    0    0    -1  
$EndComp
Text GLabel 1350 3700 0    50   Input ~ 0
S1_A
Wire Wire Line
	1350 3700 1600 3700
NoConn ~ 1600 3500
$Comp
L dk_Logic-Gates-and-Inverters:SN74HC14N U2
U 1 1 5E47ABFB
P 4800 1950
F 0 "U2" H 4800 2753 60  0000 C CNN
F 1 "SN74HC14N" H 4800 2647 60  0000 C CNN
F 2 "digikey-footprints:DIP-14_W3mm" H 5000 2150 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc14" H 5000 2250 60  0001 L CNN
F 4 "296-1577-5-ND" H 5000 2350 60  0001 L CNN "Digi-Key_PN"
F 5 "SN74HC14N" H 5000 2450 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5000 2550 60  0001 L CNN "Category"
F 7 "Logic - Gates and Inverters" H 5000 2650 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc14" H 5000 2750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN74HC14N/296-1577-5-ND/277223" H 5000 2850 60  0001 L CNN "DK_Detail_Page"
F 10 "IC INVERTER SCHMITT 6CH 14DIP" H 5000 2950 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5000 3050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5000 3150 60  0001 L CNN "Status"
	1    4800 1950
	1    0    0    -1  
$EndComp
Text GLabel 4350 1650 0    50   Input ~ 0
S1
Text GLabel 4350 1850 0    50   Input ~ 0
ENCA
Text GLabel 4350 1750 0    50   Input ~ 0
ENCB
Text GLabel 5250 1650 2    50   Input ~ 0
S1_A
Text GLabel 5250 1750 2    50   Input ~ 0
ENCB_A
Text GLabel 5250 1850 2    50   Input ~ 0
ENCA_A
Wire Wire Line
	5100 1650 5250 1650
Wire Wire Line
	5100 1750 5250 1750
Wire Wire Line
	5100 1850 5250 1850
Wire Wire Line
	4350 1650 4500 1650
Wire Wire Line
	4350 1750 4500 1750
Wire Wire Line
	4350 1850 4500 1850
Wire Wire Line
	1350 4100 1600 4100
NoConn ~ 1600 3600
NoConn ~ 2600 3400
NoConn ~ 2600 3500
NoConn ~ 2600 3600
Text GLabel 4750 1300 0    50   Input ~ 0
VCC
Wire Wire Line
	4800 1350 4800 1300
Wire Wire Line
	4800 1300 4750 1300
Text GLabel 4800 2500 0    50   Input ~ 0
GND
Wire Wire Line
	4800 2500 4800 2450
NoConn ~ 5100 1950
NoConn ~ 5100 2050
NoConn ~ 5100 2150
NoConn ~ 4500 2150
NoConn ~ 4500 2050
NoConn ~ 4500 1950
$EndSCHEMATC
