#include<pic.h>
#include"pic_serial.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
unsigned char a=0;
unsigned char dat[]="WORKING...";

void main()
{
	TRISC=0xbf;
	PORTC=0xbf;
	SYNC=0;//USART Mode Select bit is Asynchronous mode
	SPEN=1;//Serial Port Enable bit is 1 means to enable the serial port
	TXEN=1;// to enable the transmit port
	BRGH=1;//Baud Rate Select bit is '1'
	SPBRG=129;
	
while(1)
{
while(TXIF==0);
TXIF=0;
TXREG=dat[a];
if(dat[a]!='\0')
{ 
   a++;
}
else
{
 a=0;
}
_delay(100000);
}
}	