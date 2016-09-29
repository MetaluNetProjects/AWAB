# AWAB

Design files for Véronique Béland's AWAB project.

Fraise firmware for :
- galvanic skin response multipoint sensor 
- FSR sensor 
- 2 leds 
- 1 12V pwm channel (12V led dimmer).

PureData driver patch & test network client.


metalu.net 2016


-----
##Install :

- pd 0.46-7 minimum
- deken (if not already installed : https://github.com/pure-data/deken )
- pd externals (through deken : Pd/Help/Find externals)
	-	zexy 2.2.6 
	-	moonlib 
	-	hcs 
	-	ggee
	-	comport 
- Fraise : extract https://github.com/MetaluNet/Fraise/archive/master.zip into ~/pd-externals.  

On Linux, you may need to add your user to the dialout group, 
to have read/write permissions on the USB device /dev/ttyACM0. Just do :   
`sudo adduser [your_username] dialout`

then logout and re-login.



-----
##Running
1) launch : `pd 0main.pd`
   if you want to specify network tcp port (intead of default 45451) :
   `pd -send "NETWORK_PORT [port]" -open 0main.pd`

2) for testing : `pd 0testClient.pd` ; connect ; try commands.

-----
##Network communication

port : 45451 tcp

commands :

- `select A(int:0 to 15) B(int:0 to 15)` : select mesure terminals pair

- `getMesure` : ask current mesure.   
  Returns : m M(float) ; wait 200ms min since last `select`.

- `handCapture` : query for all 35 hand mesurements.   
  Returns : `hc m1 m2 (...) m35` where m1-35 are floats

- `getWeight` : query weight mesurement.  
  Returns : `w weight(float)`

- `light P(float:0.0 to 1.0) T(float:milliseconds)` : set light1 power ; transition time parameter T is optionnal

- `light2 P T` : set light2 power. T is optionnal.

- `leds LED1(bool:0/1) LED2(bool:0/1)` : set leds state.
 
- `clearOffset` : clear mesure offset.

- `clearWeightOffset` : clear weight mesure offset.

- `progress P(int:0 to 10)` : switch progress bar leds 1 to P on.



