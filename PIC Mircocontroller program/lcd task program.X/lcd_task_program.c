
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
unsigned char X;
unsigned char lcd_address[] = {0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 
                               0xCE,0xCD, 0xCC, 0xCB, 0xCA, 0xC9, 0xC8, 0xC7, 0xC6};
unsigned char array[9] = "AKASH R H"; // Adjusted array size to 9 to fit the display line


void main(void) {
    init();
    //  To display first line
    for(X = 0; X < 9; X++) {
        Lcd_Command(lcd_address[X]); //To Send the address to LCD
        Lcd_Data(array[X]); // To Send the  data to LCD
        __delay_ms(100);
    }
    // To display in second line of reverse cursor 
    for(X = 0; X < 9; X++) {
        Lcd_Command(lcd_address[9 + X]); // The address will be convert reverse address to LCD (second line)
        Lcd_Data(array[X]); // The data will be Send in forward order to LCD
        __delay_ms(100);     
    }
    while(1);
}

void init() {
    TRISC = 0x00; //RC3 RS RCO EN
    TRISD = 0x00; //DATA PINS
    Lcd_Command(0x32); 
    __delay_ms(100); 
    Lcd_Command(0x32); 
    __delay_ms(100);
    Lcd_Command(0x32); 
    __delay_ms(100);
    Lcd_Command(0x38); // For function set(N=1----> TWO LINES DISPLAY AND F=0---> 5x7 DOTS)
    __delay_ms(100);
    //Lcd_Command(0x06); //shift cursor right
    //__delay_ms(100);
    Lcd_Command(0x0C); // display on cursor off
    __delay_ms(100);
    Lcd_Command(0x01); // clear display
    __delay_ms(100);
}

void Lcd_Data(unsigned char data) {
    PORTC |= 0x08; // RS=1 RC3
    PORTD = data; // DATA
    PORTC |= 0x01; // EN=1 RC0
    PORTC &= ~0x01; // EN=0 RC0
    __delay_ms(10); 
}

void Lcd_Command(unsigned char i) {
    PORTC &= ~0x08; // RS=0 RC3
    PORTD = i; //DATA
    PORTC |= 0x01; //EN=1 RCO
    PORTC &= ~0x01; //EN=0 RCO
    __delay_ms(10); 
}