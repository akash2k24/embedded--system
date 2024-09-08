#include <pic.h>
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif

void delay(long int);

unsigned char value1,value2,var;
unsigned char digit[]={0X3F, //Hex value to display the number 0
                    0X06, //Hex value to display the number 1
                    0X5B, //Hex value to display the number 2
                    0X4F, //Hex value to display the number 3
                    0X66, //Hex value to display the number 4
                    0X6D, //Hex value to display the number 5
                    0X7C, //Hex value to display the number 6
                    0X07, //Hex value to display the number 7
                    0X7F, //Hex value to display the number 8
                    0X6F}; //0,1,2.....9 (COMMON ANODE)
int i=0;
void main()
{
TRISB = 0x00;
TRISC = 0xfc;
while(1)
{
value1=var/10;value2 = var%10;
for(i=0;i<10;i++)
{
RC0=1; //En 10nth digit
PORTB = digit[value1];
delay(7000);
for(i=0;i<10;i++)
{
if(var>99){var=0;} else var++;
value2 = var%10;
RC1=1;
PORTB = digit[value2];
delay(7000);
delay(1000);
}}
}
}

void delay(long int k)
{
while(k--);
}