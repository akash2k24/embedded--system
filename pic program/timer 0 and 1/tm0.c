

#include <pic.h>

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
void timer0delay();
void seq(char get)
{
{
for (int j=0; j<=7; j++) 
{
PORTD = get << j; //LED move Left Sequence 
timer0delay();
}
for (int j=7; j>=0; j--)
{
PORTD = get << j; //LED move Left Sequence 
timer0delay();
} 
}
}

void main(void) 
{
TRISC0 = 1; //Define PORTC pin 0 is used as input for push button.
TRISD = 0x00; //Instruct the MCU that all pins are output 
PORTD=0x00; //Define PORT D as output
OPTION_REG=0b00000111; //Prescale is assigned to Timer 0, Prescaler value = 256, 
TMR0=237;       // Load the time value for 1ms delay
while(1) //define While loop for continuous operation
{
    if (RC0==0)//if PORTC pin 0 = 1
    {
    
        seq(1); //call function 1 with parameter 1 
        seq(3); //call function 3 with parameter 3
        seq(7); //call function 7 with parameter 7
        seq(15); //call function 4 with parameter 15
        
        while(RC0==1) //If button is still pressed
        {
            PORTD=0xFF; //Turn ON all LEDs
        }
    }
}
}
void timer0delay() // 1 second
{
    int i;
    for (i=0;i <1000 ; i++);{
    while(!TMR0IF);        //Stays here 256 times and then TMR0IF=1
        TMR0IF=0;i=0;
     
   }             //Resetting the overflow flag
}

