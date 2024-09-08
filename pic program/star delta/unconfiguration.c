#include <pic.h>
#define motor1 RD0
#define motor2 RD1

#define _XTAL_FREQ 20000000
void star();
void timer1delay(void){     //100ms delay
    T1CON=0x31;           //Timer-1 with Prescaler 1:8
    TMR1H=0x0B;             //Count Hight Byte 100ms delay @20Mhz
    TMR1L=0xDB;             //Count Low Byte
    GIE=1;          //Enable Global Interrupt
    PEIE=1;         //Enable the Peripheral Interrupt
    TMR1ON =1;     //Start Timer1   
    for(int i=1; i<=5;i++){  //running for loop 5 times to get 0.5 sec 
    while(!TMR1IF);
		TMR1IF = 0;		// Turn on Timer after overflow          //Clear Interrupt
    }
}

void main(void)
{
	PORTC=0xff;
	TRISC0 =1;
    TRISC1=1;
	TRISD = 0x00; 
	PORTD=0x00;
	while(1)
{
star();
}
}
void star()
while (1)
{
if (RC0 ==1 && RC1 ==0)
{
for(int i=0;i<=10;i++)
{
RD1=1;
timer1delay();
}
while(1)
{
if(RC1=0
		else if( RC1 ==1&& RC0 ==0)
		{
			motor1 =0;
			motor2 =1;
			timer1delay();
			}
		else
		{
			motor1=0;
			motor2=0;
			timer1delay();
			}
		}

