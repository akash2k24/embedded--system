#include<pic.h>
#include"pic_adc.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif


void delay(int a)  
{ 
for(int i=0;i<a;i++)
{
for(int j=0;j<144;j++);
}
}

void main()
{
TRISA=0xff;
TRISC=0x00;
CCP1CON =0x0F;//CCP1CON REGISTER '0000 1111' to set pwm mode
T2CON=0x04; //TIMER2 CONTROL REGISTER to on the timer mode in bit '2'
unsigned int tep;
CCPR1L=40.5; //to set low timer and high timer in ccpr1l 
while(1)
{
tep=Adc8_Cha(1);
PR2=tep;
delay(1);
}
}

