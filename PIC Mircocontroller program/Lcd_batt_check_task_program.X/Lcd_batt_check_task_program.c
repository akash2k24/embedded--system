
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
unsigned char k[30]={"BATT VOLT:     "};
unsigned char a[30]={"BATTERY LOW   NORMAL HIGH  "};
unsigned int d4,d3,d2,d1,i,j;
unsigned char x,m,n,value,p;

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
    OPTION_REG&=0x7F; // To using inbuild pull up OPTION_REG when the PORTB is using input means then use pull up OPTION_REG 
    Lcd_Command(0x30);
    __delay_ms(50);
    Lcd_Command(0x30);
    __delay_ms(50);
    Lcd_Command(0x30);
    __delay_ms(50);
    Lcd_Command(0x38);
    __delay_ms(50);
    Lcd_Command(0x06); //shift cursor right
    __delay_ms(50);
    Lcd_Command(0x0c); // display on cursor off
    __delay_ms(50);
    Lcd_Command(0x01); // clear display
    __delay_ms(50);
    j=155;
}
void keyscane()
{
    value=PORTB&0xF0;
    switch(value)
    {
         case 0xE0:
            Lcd_Command(0x80); //To start from first line in display
            for(x=0;x<10;x++)
            {
                Lcd_Data(k[x]); // To display the 'BATT VOLT' in first line
            }
            Lcd_Command(0x8B);
            Lcdoutput(j);
            
            Lcd_Command(0xC0); //To start from second line in display
            for(p=0;p<7;p++)
            {
                Lcd_Data(a[p]); // To display the 'battery'  in second line 
            }
            
            break;          
        case 0xD0:
            j++;  
            if(j>=225)
                j=225;
            Lcd_Command(0x8B); //To display 'j' increment value in first line
            Lcdoutput(j);
            break;
        case 0xB0:
                j--;
            if(j<=155)
                j=155;
            Lcd_Command(0x8B); //To display 'j' decrement  value in first line
            Lcdoutput(j);
            break; 
        case 0x70:
            j=155;
            Lcd_Command(0x8B);
            Lcdoutput(j);
            Lcd_Command(0xC8);
            for(p=8;p<14;p++)
            {
                Lcd_Data(a[p]); //To display 'low' value in second line
            }
            break;
    }
     if(value==0xE0 || value==0xD0 || value==0xB0 || value==0x70)
    {
    if(j>=155 && j<=175)
    {
        Lcd_Command(0xC8); //To start second line from 'C8' in display
            for(p=8;p<14;p++)
            {
                Lcd_Data(a[p]); // if condition true and then to display 'low' in second line 
            }
    }
    else if(j>175 && j<=205)S
    {
        Lcd_Command(0xC8);
            for(p=14;p<20;p++)
            {
                Lcd_Data(a[p]);// if condition true and then to display 'Normal' in second line 
            }
    }
    else if(j>205 && j<=225)
    {
        Lcd_Command(0xC8);
            for(p=21;p<27;p++)
            {
                Lcd_Data(a[p]);// if condition true and then to display 'High' in second line 
            }
    }

}
}
void Lcd_Data(unsigned char i)
{
    PORTC|=0x08; // RS=1 RC3
    PORTD=i;   // DATA
    PORTC|=0x01; // EN=1 RC0
    PORTC&=~0x01; // EN=0 RC0
    __delay_ms(50);
}
void Lcd_Command(unsigned char i) //RS=RC2 AND EN=RC0 AND THEN DATAPINS ARE D0 TO D7 IN PORTD 
{
    PORTC&=~0x08;// RS=0 RC3
    PORTD =i;     //DATA
    PORTC|=0x01;  //EN=1 RCO
    PORTC&=~0x01; //EN=0 RCO
    __delay_ms(50);
}
void Lcdoutput(unsigned int i)
{
      d4=(unsigned char)(i/100);  
    d3=(unsigned char)((i-(d4*100))/10);
    d2=(unsigned char)((i-(d4*100)-(d3*10)));
    Lcd_Command(0x8B);
    Lcd_Data(0x30+d4);
    Lcd_Command(0x8C);
    Lcd_Data(0x30+d3);
    Lcd_Command(0x8D);
    Lcd_Data(0x2E);
    Lcd_Command(0x8E);
    Lcd_Data(0x30+d2);


}