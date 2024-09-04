// PIC16F877A Configuration Bit Settings
// 'C' source line config statements
// CONFIG
#pragma config FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 6000000 // 6MHZ clk
unsigned char value ;
void main(void) 
{
    TRISC=0x00; // RC7 & RC2 as output 
    PORTC = 0x00; // sets all the pins of Port C to 0
    TRISB=0xF0; // 1111 0000 as input
    PORTB = 0x00; //  sets all the pins of Port B to 0
    while(1)
    {
        value = PORTB;
        switch(value)
        {
            case 0xE0: PORTC = 0x80; // 1000 0000
            break ; // To break the case condition
            case 0xD0: PORTC = 0x04; // 0000 0100
            break ; // To break the case condition
            case 0xB0: PORTC = 0x70; // 0111 0000
            break ; // To break the case condition
            case 0x70: PORTC = 0x84; // 1000 0100
            break ; // To break the case condition
            case 0xF0: PORTC = 0x00; // 1000 0000
            break ; // To break the case condition
        }
    }
}
    