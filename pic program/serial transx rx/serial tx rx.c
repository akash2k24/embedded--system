#include<pic.h>
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_OFF & CP_OFF & BOREN_ON & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
void ser_int();
void tx(unsigned char);
unsigned char rx();
void txstr(unsigned char *);

void main()
{
    TRISC6=0;   //Output (TX)
   
        TRISC7=1;   //Input (RX)
    ser_int();
    txstr("PIC16F877A SERIAL TEST\n\r\r");
    while(1) 
{

        tx(rx());
    }   
}   

void ser_int()
{
    TXSTA=0x20; //BRGH=0, TXEN = 1, Asynchronous Mode, 8-bit mode
    //TXSTA: TRANSMIT STATUS AND CONTROL REGISTER ,BRGH: High Baud Rate Select bit and to set 0 is low speed baud rate and also Asynchronous Mode
    //TXEN: Transmit Enable bit and 1= Transmit enabled
    RCSTA=0b10010000; //Serial Port enabled,8-bit reception
    //RCSTA: RECEIVE STATUS AND CONTROL REGISTER and to enable the 4 bit is '1' enables continous receive
    // then 6 bit '0' to set 8-bit reception mode and 7 bit is enable serial port fot tx and rx in ( RC6 AND RC7)     
    // when using comunication program to use 10bit 
    SPBRG=31;           //9600 baudrate for 11.0592Mhz
    // to baud rate generatot register
    TXIF=0;//TXIF USART Transmit Interrupt Flag bit and 0 means transmit buffer is full
    RCIF=0; //RCIF USART Receive Interrupt Flag bit and 0 means recevier buffer is empty
}
    
void tx(unsigned char a) // This function for transmit the data 
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