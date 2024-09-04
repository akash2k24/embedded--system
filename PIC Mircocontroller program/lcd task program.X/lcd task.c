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
void init(void);
void Lcd_Command(unsigned char);
void Lcd_Data(unsigned char);
unsigned char X,n,m,i;
unsigned char array[11]={"HELLO WORLD"};
void main()
{
    init();
    Lcd_Command(0x80);
    for(X=0;X<11;X++)
    {
        Lcd_Data(array[X]);
    }
    while(1);
}

void init()
{
    TRISC=0x00; //RC3 RS RCO EN
    TRISD=0x00; //DATA PINS
    Lcd_Command(0x38);
    __delay_ms(100);
    Lcd_Command(0x38);
    __delay_ms(100);
    Lcd_Command(0x38);
    __delay_ms(100);
    Lcd_Command(0x38);
    __delay_ms(100);
    Lcd_Command(0x06); //shift cursor right
    __delay_ms(100);
    Lcd_Command(0x0c); // display on cursor off
    __delay_ms(100);
    Lcd_Command(0x01); // clear display
    __delay_ms(100);
}
void Lcd_Data(unsigned char i)
{
    PORTC|=0x08; // RS=1 RC3
    PORTD=i;   // DATA
    PORTC|=0x01; // EN=1 RC0
    PORTC&=~0x01; // EN=0 RC0
    __delay_ms(100);
}
void Lcd_Command(unsigned char i) //RS=RC2 AND EN=RC0 AND THEN DATAPINS ARE D0 TO D7 IN PORTD 
{
    PORTC&=~0x08;// RS=0 RC3
    PORTD =i;     //DATA
    PORTC|=0x01;  //EN=1 RCO
    PORTC&=~0x01; //EN=0 RCO
    __delay_ms(100);
}