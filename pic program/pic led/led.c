#include<pic.h>

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
#define sw1 RD0
#define sw2 RD1
#define led RC0


void main ()
{
TRISC0=0; // TRISC to set output in led
TRISD=0x03; // TRISD to set input in sw1 and sw2
led=0;
while(1)

if(sw1==1) // if condition the sw1 is high mean led is on
{
led=1;
}
else if (sw2==1) // else if condition is sw2 is high means led on
{
led=1;
}
else  // then two is switch off means led off
led=0;
}




