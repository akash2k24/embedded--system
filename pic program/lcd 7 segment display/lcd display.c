#include<pic.h>
#include "pic_lcd8.h"
#define m1 RC0
#define m2 RC1
#define m3 RC2
#define m4 RC3
#define c1 RA0
#define c2 RA1
#define c3 RA2
#define c4 RA3


void main()
{
	TRISC=0xC0; //TRISC to set motor output 
	TRISD=0x00; //TRISD to set display output
	TRISA=0xff; //TRISA to set input switch
	//TRISA=0x00;
m1=0,m2=0,m3=0,m4=0,c1=0,c2=0,c3=0,c4=0;
Lcd8_Init();
Lcd8_Display(0x80," Robot          ",16);
Lcd8_Display(0xC0," controlling    ",16);
Delay(6500);	
while(1){
	if( c1 == 1 && c2 ==0 && c3 ==0 && c4 ==0 ) // if the c1 is high means m2and m4 is on 
		{
			m1=0;
			m2=1;
			m3=0;
			m4=1;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," fordwarding    ",16);
		}
	else if(c2 == 1 && c1 ==0 && c3 ==0 && c4 ==0 ) // else if the c2 is high means m1 and m3 is on 
		{	m1=1;
			m2=0;
			m3=1;
			m4=0;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," Reversing      ",16);

		}
	else if(c3 == 1 && c1 ==0 && c2 ==0 && c4 ==0 )// if the c3 is high means m1 and m4 is on 
		{
			m1=1;
			m2=0;
			m3=0;
			m4=1;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," rightward      ",16);
		}
	else if(c4 == 1 && c1 ==0 && c3 ==0 && c2 ==0 ) // if the c4 is high means m2 and m3 is on 
		{	
		    m1=0;
			m2=1;
			m3=1;
			m4=0;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," leftward       ",16);
		}
	else  // all motor are off
		{
			m1=0;
			m2=0;
			m3=0;
			m4=0;
		}
}

}
