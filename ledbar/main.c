/*********************************************************************
 *               Test Fraise on Versa1.0 
 *********************************************************************/

#define BOARD Versa1

#include <fruit.h>

t_delay mainDelay;
char progress=0;

#define FOREACH(F) F(1);F(2);F(3);F(4);F(5);F(6);F(7);F(8);F(9);F(10);
#define LED_INIT(n) pinModeDigitalOut(LED##n); digitalClear(LED##n)
#define LED_UPDATE(n) if(progress >= n) digitalSet(LED##n); else digitalClear(LED##n)

void setup(void) {		
//----------- Setup ----------------
	fruitInit();
			
	FOREACH(LED_INIT);
	delayStart(mainDelay, 5000); 	// init the mainDelay to 5 ms	
}

void loop() {
// ---------- Main loop ------------
	fraiseService();	// listen to Fraise events

	if(delayFinished(mainDelay)) // when mainDelay triggers :
	{
		delayStart(mainDelay, 5000); 	// re-init mainDelay
	}
}

// Receiving

/*void fraiseReceiveChar() // receive text
{
	unsigned char c;
	
	c=fraiseGetChar();
	if(c=='P'){		//switch LED on/off 
		c=fraiseGetChar();
		digitalWrite(LED, c!='0');		
	}
	else if(c=='E') { 	// echo text (send it back to host)
		printf("C");
		c = fraiseGetLen(); 			// get length of current packet
		while(c--) printf("%c",fraiseGetChar());// send each received byte
		putchar('\n');				// end of line
	}	
}*/

void fraiseReceive() // receive raw bytes
{
	unsigned char c;
	
	c=fraiseGetChar();	// get the first byte

	switch(c) {
		PARAM_CHAR(1,progress); 
		FOREACH(LED_UPDATE);break;
	}
}

