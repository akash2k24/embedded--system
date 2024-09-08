#include<pic.h>
#define swa RB0
#define swb RB1
#define led RA1

void delay()
{
	unsigned int a;
	for (a=0;a<1000;a++);
	}
	
void main()
{
	TRISA=0;
	TRISB=0xff;
	while(1)
	{
		if(swa==1&&swb==0)
		{
			led=0xff;
			}
		else if(swa ==0 &&swb==1)
		{
			led=0xff;
			}
		else
		{
		  led =0;
		}
	}
}