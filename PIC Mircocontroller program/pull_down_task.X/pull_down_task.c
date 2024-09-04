#pragma config FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
#include <xc.h>
#define _XTAL_FREQ 6000000 // 6MHZ clk
unsigned char value ;
void main(void) 
{
    TRISD=0x00; // RD5 & RD3 as output 
    PORTD = 0x00; // sets all the pins of Port D to 0
    TRISC=0x0F; //  0000 1111 
    PORTC = 0x00; //  sets all the pins of Port C to 0
    while(1)
    {
        value = PORTC;
        switch(value)
        {
            case 0x01: // 0000 0001
                PORTD = 0x08; // 0000 1000
            break ; // To break the case condition
            case 0x02:// 0000 0010
                PORTD = 0x00; // 0000 0000
            break ; // To break the case condition
            case 0x04: //0000 0100
                PORTD = 0x28; // 0010 1000
            break ; // To break the case condition
            case 0x08:// 0000 1000
                PORTD = 0x20; // 0010 0000
            break ; // To break the case condition
            case 0x00: PORTD = 0x00; // 0000 0000
            break ; // To break the case condition
        }
    }
}