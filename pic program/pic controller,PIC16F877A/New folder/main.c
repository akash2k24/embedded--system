#include<pic.h>
#include "pic_lcd8.h"

#define led  RB1
//__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_OFF & CP_OFF & BOREN_ON & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);


void ser_int();
void tx(unsigned char);
unsigned char rx();
void txstr(unsigned char *);

void main()
{
    TRISC6=0;   //Output (TX)
    TRISB=0xff;
	TRISC=0xC0;
	
	TRISD=0x00;
    TRISC7=1;   //Input (RX)
	Lcd8_Init();
    ser_int();
    txstr("PIC16F877A SERIAL TEST\n\r\r");

    while(1) 
{
	tx(rx());
	Lcd8_Decimal3(0x82,rx);
    }   
}   

void ser_int()
{
    TXSTA=0x20; //BRGH=0, TXEN = 1, Asynchronous Mode, 8-bit mode
    RCSTA=0b10010000; //Serial Port enabled,8-bit reception
    SPBRG=17;           //9600 baudrate for 11.0592Mhz
    TXIF=RCIF=0;
}
    
void tx(unsigned char a)
{
    TXREG=a;
    while(!TXIF);
    TXIF = 0;
}

unsigned char rx()
{
    while(!RCIF);
    RCIF=0;
    return RCREG;
}

void txstr(unsigned char *s)
{
    while(*s) {
        tx(*s++);
    }
}