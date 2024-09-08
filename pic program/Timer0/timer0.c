#include <pic.h>
#define LED RB0
unsigned int cnt=0;
 
int main(void)
{
 
    PORTB=0x00;
    TRISB0=0;
    T0CS=0;
    PSA=0;
    PS0=1;
    PS1=1;
    PS2=1;
    T0IE=1;
    GIE=1;
    TMR0=0;
    while(1);
}

void interrupt _T0_ISR(void)
{
    if(T0IF&&T0IE)
{
 cnt+=1;
 TMR0=-207;
 T0IF=0;
    }
    if(cnt>=10)
{
        
        LED^=1;
       
        cnt=0;
    }
}