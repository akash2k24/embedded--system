
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
#define _XTAL_FREQ 20000000  // 6MHZ clk
#define First_Line 0x80
#define Second_Line 0xc0
#define Curser_On  0x0f
#define Curser_Off 0x0c
#define Clear_Display 0x01
#define Data_Port PORTD

static bit   Lcd_rs  @((unsigned) &PORTC*8+4); 
static bit   Lcd_en  @((unsigned) &PORTC*8+5);

void main();
void init();
void Lcd_Command(unsigned char);
void Lcd8_Write(unsigned char,unsigned char);
void Lcd8_Display(unsigned char,const unsigned char*,unsigned int);
void Lcd8_Decimal2(unsigned char,unsigned char);
void Lcd8_Decimal3(unsigned char,unsigned char);
void Lcd8_Decimal4(unsigned char,unsigned int);
void Delay(unsigned int);

void main()
{
TRISC=0xC0;
TRISD=0x00;

init();
Delay(6500);
Lcd8_Display(0x80,"    WELCOME     ",16);
Lcd8_Display(0xC0,"LCD DISPLAY TEST",16);
Delay(6500);Delay(6500);
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

void Lcd_Command(unsigned char i) {
    PORTC &= ~0x08; // RS=0 RC3
    PORTD = i; //DATA
    PORTC |= 0x01; //EN=1 RCO
    PORTC &= ~0x01; //EN=0 RCO
    __delay_ms(10); 
}

void Lcd8_Write(unsigned char com,unsigned char lr)
{
	Lcd_Command(com);

	Data_Port=lr;			// Data 
	Lcd_en=1;
	Lcd_rs=1;
	Delay(125);
	Lcd_en=0;
	Delay(125);
}

void Lcd8_Display(unsigned char com,const unsigned char *word,unsigned int n)
{
	unsigned char Lcd_i;

	for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	{ 
		Lcd8_Write(com+Lcd_i,word[Lcd_i]);
  	}
}
 
void Lcd8_Decimal2(unsigned char com,unsigned char val)
{
	unsigned int Lcd_hr,Lcd_t,Lcd_o;

	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Lcd8_Write(com,Lcd_t+0x30);
	Lcd8_Write(com+1,Lcd_o+0x30);
}


void Lcd8_Decimal3(unsigned char com,unsigned char val)
{
	unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	Lcd_h=val/100;
	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Lcd8_Write(com,Lcd_h+0x30);
	Lcd8_Write(com+1,Lcd_t+0x30);
	Lcd8_Write(com+2,Lcd_o+0x30);
}

void Lcd8_Decimal4(unsigned char com,unsigned int val) 
{
	unsigned int Lcd_th,Lcd_thr,Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	val = val%10000;
	Lcd_th=val/1000;
	Lcd_thr=val%1000;
	Lcd_h=Lcd_thr/100;
	Lcd_hr=Lcd_thr%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;

	Lcd8_Write(com,Lcd_th+0x30);
	Lcd8_Write(com+1,Lcd_h+0x30);
	Lcd8_Write(com+2,Lcd_t+0x30);
	Lcd8_Write(com+3,Lcd_o+0x30);
}

void Delay(unsigned int del)
{
	while(del--);
}     
