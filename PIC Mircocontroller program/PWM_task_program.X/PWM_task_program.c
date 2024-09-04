
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
void init (void);
void Pwmchange(void);
unsigned char PWMhigh20,PWMlow20;
unsigned char PWMhigh60,PWMlow60;
unsigned char PWMhigh90,PWMlow90;

void main(void)
{
    init();
    while(1)
    {
        Pwmchange();
    }
}
void init (void)
{
   TRISC=0xFC;   // To set RC1 pin for output
   CCP2CON=0x0C; // To store pwm low value
   T2CON=0x06;   // To set TIMER-2
   PR2=0x2F;     // To set prescalar value 47
   PWMhigh20=0x09; // 0000 1001
   PWMlow20=0x20;  // 0010 0000 
   PWMhigh60=0x1C; // 0001 1100
   PWMlow60=0x10;  // 0000 0001 ==> 0001 0000
   PWMhigh90=0x2A; // 0010 1010
   PWMlow90=0x10;  // 0000 0001 ==> 0001 0000
}
void Pwmchange()
{
    CCPR2L=PWMhigh20;
    CCP2CON=(CCP2CON & 0xCF)|PWMlow20;
    __delay_ms(3000);
    CCPR2L=PWMhigh60;
    CCP2CON=(CCP2CON & 0xCF)|PWMlow60;
    __delay_ms(3000);
    CCPR2L=PWMhigh90;
    CCP2CON=(CCP2CON & 0xCF)|PWMlow90;
    __delay_ms(3000);
}
