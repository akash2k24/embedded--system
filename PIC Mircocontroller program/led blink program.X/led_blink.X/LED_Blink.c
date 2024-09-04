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
void main(void) {
    TRISD=0xBD; // RD6 & RD1 as output rest of pins input 1011 1101
    while(1)
    {
        PORTD = 0X40; // 0100 0000
         __delay_ms(3000); // 3000 => 3 sec
        PORTD = 0x00; // 0000 0000 
         __delay_ms(3000); // 3000 => 3 sec
        PORTD = 0x02; // 0000 0010
         __delay_ms(3000); // 3000 => 3 sec
        PORTD = 0x42; // 0100 0010 
         __delay_ms(3000); // 3000 => 3 sec    
    }
}
