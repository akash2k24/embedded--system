#include<pic.h>
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
#include"pic_lcd8.h"
#include "pic_adc.h"
unsigned int x,y,z;

void main()
{
TRISC=0XC0;// to set rs and en pin for display output
TRISD=0X00;// to set port d for display output for digital pin  
TRISA=0X0f;// to set pot resistor in port a
Lcd8_Init(); 
Delay(6500);
Lcd8_Display(0x80,"-----ANOLAG-----",16);
Lcd8_Display(0xC0,"------TEST------",16);
Delay(65000);Delay(65000);
Lcd8_Command(1);
 	Lcd8_Display(0x80,"X:    Y:   Z:   ",16);
	Lcd8_Display(0xC0,"                ",16);
while(1)
{
x=Adc8_Cha(0); // to using pot resistor when increating the pot that vslue will be stored in char of x
y=Adc8_Cha(1); // to using pot resistor when increating the pot that vslue will be stored in char of y
z=Adc8_Cha(2);// to using pot resistor when increating the pot that vslue will be stored in char of z

Lcd8_Decimal3(0x82,x); //to display the x value in display output 
Lcd8_Decimal3(0x88,y); //to display the y value in display output
Lcd8_Decimal3(0x8D,z);//to display the z value in display output
}
}


