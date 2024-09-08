#include<pic.h>
#include "pic_adc.h"
#include "pic_lcd8.h"
unsigned int x,y;
#define m1 RB5
#define volt RA0
#define temp RA1
void main()
{
m1=volt=temp=0;
TRISC=0XC0;
TRISD=0X00;
TRISB=0X00;
TRISA=0X0f;
Lcd8_Init();
Delay(6500);
Lcd8_Display(0x80,"CHECK  VOLT AND ",16);
Lcd8_Display(0xC0,"------TEMP------",16);
Delay(65000);Delay(65000);
Lcd8_Command(1);
Lcd8_Display(0x80,"X:    Y:        ",16);
Lcd8_Display(0xC0,"                ",16);
while(1)

{
if(x<240)
{ 
m1=1;
x=Adc8_Cha(0);
Lcd8_Decimal3(0x82,x);
}
else if(y<=1000)
{ 
temp=1;
y=Adc8_Cha(1);
Lcd8_Decimal3(0x89,y);
}
else if(x>240)
{
m1=0;
x=Adc8_Cha(0);
Lcd8_Decimal3(0x82,x);
}
else if(y>=1000)
{
temp=0;
y=Adc8_Cha(1);
Lcd8_Decimal3(0x89,y);
}
else
{
Lcd8_Display(0x80," VOLT AND  TEMP ",16);
Lcd8_Display(0xC0,"------GOOD------",16);
}
}
}

