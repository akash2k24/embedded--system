
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
void Lcd_Data(unsigned char);
void Lcd_Command(unsigned char);
void Lcdoutput(unsigned int);
void delay(unsigned int);
void keyscane();
void init(void);
unsigned char k[30]={"SET SPD:    rpm"};
unsigned int d4,d3,d2,d1,j,i;
unsigned char x,m,n,value;

void main()
{
    init(); 
    while(1)
    {
        keyscane();
    }
}
void init(void)
{
    TRISC =0x00; //RC3 RS RCO EN
    TRISB =0xF0;
    TRISD =0x00; //DATA PINS
    PORTB =0x00;
    OPTION_REG&=0x7F;
    Lcd_Command(0x30);
    __delay_ms(100);
    Lcd_Command(0x30);
    __delay_ms(100);
    Lcd_Command(0x30);
    __delay_ms(100);
    Lcd_Command(0x38);
    __delay_ms(100);
    Lcd_Command(0x06); //shift cursor right
    __delay_ms(100);
    Lcd_Command(0x0c); // display on cursor off
    __delay_ms(100);
    Lcd_Command(0x01); // clear display
    __delay_ms(100);
    j=0;
}
void keyscane()
{
    value=PORTB&0xF0;
    switch(value)
    {
        case 0xE0:
            Lcd_Command(0x80);
            for(x=0;x<8;x++)
            {
                Lcd_Data(k[x]);//to display the 'SET SPD' in first line
            }
            Lcd_Command(0x8c);
            for(x=12;x<15;x++)
            {
                Lcd_Data(k[x]); //to display the 'rpm' in first line
            }
            Lcd_Command(0x88);
            Lcdoutput(j);
            break;
        case 0xD0:
            j++;
            if(j>5000)
            {
                j=5000;
            }
            Lcd_Command(0x88); // To display increment value 'j' in first line  
            Lcdoutput(j);
            break;
        case 0xB0:
            j--;
            if(j<1)
            {
                j=1;
            }
            Lcd_Command(0x88); // To display decrement value 'j' in first line
            Lcdoutput(j);
            
            break;
        case 0x70:
            j=0;
            Lcd_Command(0x88); // To display  'j' in first line
            Lcdoutput(j);
            break;
    }
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
void Lcdoutput(unsigned int i)
{
    d4=(unsigned char)(i/1000);
    d3=(unsigned char)((i-(d4*1000))/100);
    d2=(unsigned char)((i-(d4*1000)-(d3*100))/10);
    d1=(unsigned char)(i-(d4*1000)-(d3*1000)-(d2*10));
    Lcd_Command(0x88);
    Lcd_Data(0x30+d4);
    Lcd_Command(0x89);
    Lcd_Data(0x30+d3);
    Lcd_Command(0x8A);
    Lcd_Data(0x30+d2);
    Lcd_Command(0x8B);
    Lcd_Data(0x30+d1);
}
