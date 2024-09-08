#include<pic.h>
#include"pic_lcd8.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
void Lcd8_Init();
void Lcd8_Command(unsigned char);
void Lcd8_Write(unsigned char,unsigned char);
void Lcd8_Display(unsigned char,const unsigned char*,unsigned int);
#define RB7 r1
#define RB6 r2
#define RB5 r3
#define RB4 r4
#define RB3 c1
#define RB2 c2
#define RB1 c3
unsigned int r1,r2,r3,r4,c1,c2,c3;
void main()
{

	TRISD=0x00; //TRISD for set display output
	TRISB=0xff;
//r1=r2=r3=r4=c1=c2=c3=0;
Lcd8_Init();
Lcd8_Display(0x80,"**KEYPAD  TEST**",16); //To display the "keypad test" in display output
Delay(65000);Delay(65000);
Lcd8_Command(0x01); //to clear the display
while(1)
{
RB7=0;
if(RB3==0)
{
Lcd8_Display(0x80,"1",1);
Delay(65000);Delay(65000);
}
if(RB2==0)
{
Lcd8_Display(0x80," 2",2);
Delay(65000);Delay(65000);
}
if(RB1==0)
{
Lcd8_Display(0x80,"  3",3);
Delay(65000);Delay(65000);
}
RB7=1;RB6=0;
if(RB3==0)
{
Lcd8_Display(0x80,"   4",4);
Delay(65000);Delay(65000);
}
if(RB2==0)
{
Lcd8_Display(0x80,"    5",5);
Delay(65000);Delay(65000);
}
if(RB1==0)
{
Lcd8_Display(0x80,"     6",6);
Delay(65000);Delay(65000);
}
RB6=1;RB5=0;
if(RB3==0)
{
Lcd8_Display(0x80,"      7",7);
Delay(65000);Delay(65000);
}
if(RB2==0)
{
Lcd8_Display(0x80,"       8",8);
Delay(65000);Delay(65000);
}
if(RB1==0)
{
Lcd8_Display(0x80,"        9",9);
Delay(65000);Delay(65000);
}
RB5=1;RB4=0;
if(RB3==0)
{
Lcd8_Display(0xc0," *",2);
Delay(65000);Delay(65000);
}
if(RB2==0)
{
Lcd8_Display(0xc0,"  0",3);
Delay(65000);Delay(65000);
}
if(RB1==0)
{
Lcd8_Display(0xc0,"   #",4);
Delay(65000);Delay(65000);
}
RB4=1;
}
}