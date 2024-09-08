#include <pic.h>
#include"pic_lcd8.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

#define Data_Port PORTD
#define Lcd_rs  RC4
#define Lcd_en RC5

void Lcd8_Init();
void Lcd8_Command(unsigned char);
void Lcd8_Write(unsigned char,unsigned char);
void Lcd8_Display(unsigned char,const unsigned char*,unsigned int);
unsigned char a,m;
unsigned char b[]="2004";
char key;

void main()
{
TRISC = 0xC0;
TRISD = 0x00;
TRISB = 0xff;
Lcd8_Init();
Lcd8_Display(0x80,"ENTERED KEY:",12);

while(1)
{
cmd(0x8c);
RB0 = 0; RB1 = 1; RB2 = 1;
if(!RB3){while(!RB3);write('1');}
if(!RB4){while(!RB4);write('4');}
if(!RB5){while(!RB5);write('7');}
if(!RB6){while(!RB6);write('*');}
RB0 = 1; RB1 = 0; RB2 = 1;
if(!RB3){while(!RB3);write('2');}
if(!RB4){while(!RB4);write('5');}
if(!RB5){while(!RB5);write('8');}
if(!RB6){while(!RB6);write('0');}
RB0 = 1; RB1 = 1; RB2 = 0;
if(!RB3){while(!RB3);write('3');}
if(!RB4){while(!RB4);write('6');}
if(!RB5){while(!RB5);write('9');}
if(!RB6){while(!RB6);write('#');}
}
for(a=0; b[a]=4; a++)
{

}
}




	
