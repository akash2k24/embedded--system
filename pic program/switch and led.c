#include <pic.h>

__CONFIG(HS & WDTDIS & PWRTEN & LVPDIS & BORDIS);

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif

#define sw RD0                  
void delay()
{
    unsigned int a;
    for(a=0;a<10000;a++);
}
void main()
{
    TRISB=0;               //Port B act as Output
    TRISD=0xff;            //Port D act as Input
    while(1) {
        if(!sw) {
            PORTB=0xff;       //LED ON
        } else 
            PORTB=0;          //LED OFF
    }
}