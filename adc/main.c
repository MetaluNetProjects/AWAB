/*********************************************************************
 *               analog example for Versa1.0
 *	Analog capture on connectors K1, K2, K3 and K5. 
 *********************************************************************/

#define BOARD Versa1

#include <fruit.h>
#include <analog.h>

t_delay mainDelay;
t_delay swapSelDelay;

#define SET_PWM(pwm,val) do{ CCP##pwm##CONbits.DC##pwm##B1 = val&2;  CCP##pwm##CONbits.DC##pwm##B0 = val&1; CCPR##pwm##L=val>>2; } while(0)

unsigned char sel1=0, sel2=0, selSwap=0;
unsigned int swapSelPeriod=20000;

void setup(void) {	
//----------- Setup ----------------
	fruitInit();
	delayStart(mainDelay, 5000); 	// init the mainDelay to 5 ms

//----------- Analog setup ----------------
	analogInit();		// init analog module
	/*analogSelect(0,K1);	// assign connector K1 to analog channel 0
	analogSelect(1,K2);
	analogSelect(2,K3);*/
	analogSelect(0,SELOUT);
	
	pinModeDigitalOut(SELA0);
	pinModeDigitalOut(SELA1);
	pinModeDigitalOut(SELA2);
	pinModeDigitalOut(SELA3);
	pinModeDigitalOut(SELB0);
	pinModeDigitalOut(SELB1);
	pinModeDigitalOut(SELB2);
	pinModeDigitalOut(SELB3);
	digitalClear(SELA0);
	digitalClear(SELA1);
	digitalClear(SELA2);
	digitalClear(SELA3);
	digitalClear(SELB0);
	digitalClear(SELB1);
	digitalClear(SELB2);
	digitalClear(SELB3);
	
	analogSelect(1,WEIGHT);
	pinModeDigitalOut(LEDA);
	pinModeDigitalOut(LEDB);
	pinModeDigitalOut(LAMP);
	
	CCP1CON = 0b00001100; /* single PWM active high*/
	PSTR1CON=0; PSTR1CONbits.STR1B=1;
	SET_PWM(1,0);
	
	delayStart(swapSelDelay, swapSelPeriod); 	// init the mainDelay to 5 ms
	
}

void select(unsigned char a, unsigned char b)
{
    __critical {
    digitalWrite(SELA0, a & 1);
    digitalWrite(SELA1, a & 2);
    digitalWrite(SELA2, a & 4);
    digitalWrite(SELA3, a & 8);

    digitalWrite(SELB0, b & 1);
    digitalWrite(SELB1, b & 2);
    digitalWrite(SELB2, b & 4);
    digitalWrite(SELB3, b & 8);
    }
}

void swapSelect()
{
	if(selSwap == 0) {
	    select(sel1, sel2);
	    selSwap = 1;
	}
	else {
	    select(sel2, sel1);
	    selSwap = 0;
	}   
}

unsigned char lastChan=0;

void loop() {
// ---------- Main loop ------------
    unsigned char chan;
	fraiseService();	// listen to Fraise events
	chan = analogService();	// analog management routine
	
	if(chan!=lastChan) {
	   lastChan = chan;
	   if((chan==2) && delayFinished(swapSelDelay)) // when sampling channel is 1 (weight) and swapSelDelay triggers :
        {
	        delayStart(swapSelDelay, swapSelPeriod); 	// re-init swapSelDelay
	        swapSelect();
        }
	}

	if(delayFinished(mainDelay)) // when mainDelay triggers :
	{
		delayStart(mainDelay, 5000); 	// re-init mainDelay
		analogSend();		// send analog channels that changed
	}

	/*if(delayFinished(swapSelDelay)) // when swapSelDelay triggers :
	{
		delayStart(swapSelDelay, swapSelPeriod); 	// re-init swapSelDelay
		swapSelect();
	}*/
}

// Receiving

void fraiseReceiveChar() // receive text
{
	unsigned char c=fraiseGetChar();
	
	if(c=='E') { 	// echo text (send it back to host)
		printf("C");
		c = fraiseGetLen(); 			// get length of current packet
		while(c--) printf("%c",fraiseGetChar());// send each received byte
		putchar('\n');				// end of line
	}	
}

void fraiseReceive() // receive raw bytes
{
 	unsigned int i;
 	unsigned char c = fraiseGetChar();
 	
 	if(c == 100) {
 	    sel1 = fraiseGetChar();
 	    sel2 = fraiseGetChar();
 	    //select(sel1,sel2);
  	    /*digitalWrite(SELA0, c & 1);
 	    digitalWrite(SELA1, c & 2);
 	    digitalWrite(SELA2, c & 4);
 	    digitalWrite(SELA3, c & 8);

  	    digitalWrite(SELB0, c & 16);
 	    digitalWrite(SELB1, c & 32);
 	    digitalWrite(SELB2, c & 64);
 	    digitalWrite(SELB3, c & 128);*/
    } 
    else if(c == 101) {
       swapSelPeriod = fraiseGetInt(); 
    }
    else if(c == 20) {
 	    i = fraiseGetInt();
 	    SET_PWM(1,i);
 	}
 	else if(c == 10) {
 	    c = fraiseGetChar();
 	    digitalWrite(LEDA, c!=0);
 	    c = fraiseGetChar();
 	    digitalWrite(LEDB, c!=0);
 	}
}
