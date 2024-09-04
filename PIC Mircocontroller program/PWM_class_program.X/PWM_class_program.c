
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 20000000 // 6MHZ clk
void init (void);
void Pwmchange(void);unsigned char PWMhigh10,PWMlow10;
unsigned char PWMhigh50,PWMlow50;
unsigned char PWMhigh80,PWMlow80;

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
   TRISC=0xFB;   // To set RC2 pin for output
   CCP1CON=0x0C; // To store pwm low value 
   T2CON=0x06;   // To set TIMER-2
   PR2=0x5E;     // To set prescalar value 94
   PWMhigh10=0x0D; // 0000 1001 
   PWMlow10=0x30;  // 0000 0010 => 0010 0000
   PWMhigh50=0x2F; // 0010 1111 
   PWMlow50=0x00;  // 0000 0000
   PWMhigh80=0x4B; // 0100 1011
   PWMlow80=0x00;  // 0000 0000
}
void Pwmchange()
{
    CCPR1L=PWMhigh10;
    CCP1CON=(CCP1CON & 0xCF)|PWMlow10;
    __delay_ms(3000);
    CCPR1L=PWMhigh50;
    CCP1CON=(CCP1CON & 0xCF)|PWMlow50;
    __delay_ms(3000);
    CCPR1L=PWMhigh80;
    CCP1CON=(CCP1CON & 0xCF)|PWMlow80;
    __delay_ms(3000);
}
