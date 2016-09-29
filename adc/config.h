#ifndef _CONFIG_H_
#define _CONFIG_H_

#define ANALOG_FILTER 3 
#define ANALOG_THRESHOLD 0

// digital inputs of GSR multiplexers (74HCT4067)
#define SELA0 MAEN
#define SELA1 K3
#define SELA2 K1
#define SELA3 K2

#define SELB0 LED
#define SELB1 K6
#define SELB2 K4
#define SELB3 MA1

// analog output of GSR amplifier
#define SELOUT K5

// lamps PWMs
#define LAMP1 K9    //pwm=CCP1_B
#define LAMP2 MB1   //pwm=CCP4

// green/red leds
#define LEDA K11
#define LEDB K12

// (deprectated) FSR weight sensor ADC
#define WEIGHT K10

// hx711 (load cell amplifier+adc) config:
#define HX711_SCK_PIN K7    // hx711 serial clock on K7 pin 
#define HX711_DATA_PIN K8   // hx711 seria data on K8 pin

#endif // _CONFIG_H_

