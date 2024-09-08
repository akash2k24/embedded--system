#include<pic.h>
#include "pic_lcd8.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif

void ser_int();
void tx(unsigned char);
char receiveChar(void);
void txstr(unsigned char *);
unsigned char receiveData,led;
#define led1 RB1
#define led2 RB2

void main()
{
TRISC=0XC0;// To set port c for rs pin and en pin for display
TRISB1=0; //portb1 for led1 output 
TRISB2=0; //portb2 for led2 output
TRISD=0X00; // portd all pin for display digital pin output
TRISA=0X0f; //
TRISC6=0; // port c6 for tx pin 
TRISC7=1; // port c7 for rx pin
led1=led2=0;
ser_int(); // to set serial init function
txstr("PIC16F877A SERIAL TEST\n\r\r"); // to display serial communication putty software

Lcd8_Init();
Lcd8_Display(0x80,"SERIAL TEST",11);
Delay(65000);Delay(65000);
//Lcd8_Command(0x0c);
Lcd8_Command(0x01);
while(1)
{

receiveData =receiveChar(); // when the receivechar value is stored in receivedata char
tx(receiveData); // when the receivedata to will be transmit in serial communication
Lcd8_Decimal3(0xc0,receiveData); // to display the receive data in display
Lcd8_Command(0x01);

if(receiveData==119) // if the receivedata the 119 means led1 is on 
{
led1=1;
led2=0;
Lcd8_Display(0x80,"LED ON",6); // to display the led on 
Delay(6500);
}
else if(receiveData==101) //else if the receivedata the 101 means led2 is on 
{
led1=0;
led2=1;
Lcd8_Display(0x80,"LED OFF",7);// to display the led off 
Delay(6500);
}
else
{ 
led1=0;
led2=0;
Lcd8_Display(0x80,"ALL OFF",7);
//Lcd8_Command(0x01);
}
}
}
void ser_int()
{
TXSTA=0x20;
RCSTA=0b10010000;
SPBRG=31;
TXIF=RCIF=0;
}

void tx(unsigned char a)
{
TXREG=a;
while(!TXIF);
TXIF=0;
}
char receiveChar(void)
{
while(!RCIF);
RCIF=0;
return RCREG;
}
void txstr(unsigned char *s)
{
while(*s){
tx(*s++);
}
}
							