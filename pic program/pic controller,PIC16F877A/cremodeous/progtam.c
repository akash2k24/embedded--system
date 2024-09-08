#include<pic.h>
#define m1  RB0
#define m2  RB1
#define m3  RB2
#define m4  RB3
#define c1  RD0
#define c2  RD1
#define c3  RD2
#define c4  RD3
		
		
void main()
{
  TRISB=0;
  TRISD=0xff;
	m1=0,m2=0,m3=0,m4=0,c1=0,c2=0,c3=0,c4=0;
	
	while(1){
		if( c1 == 1 && c2 ==0 && c3 ==0 && c4 ==0 )
		{
			m1=0;
			m2=1;
			m3=0;
			m4=1;
		}
		else if(c2 == 1 && c1 ==0 && c3 ==0 && c4 ==0 )
		{m1=1;
			m2=0;
			m3=1;
			m4=0;
		}
		else if(c3 == 1 && c1 ==0 && c2 ==0 && c4 ==0 )
		{
			m1=1;
			m2=0;
			m3=0;
			m4=1;
		}
		else if(c4 == 1 && c1 ==0 && c3 ==0 && c2 ==0 )
		{ m1=0;
			m2=1;
			m3=1;
			m4=0;
		}
		else 
		{
			m1=0;
			m2=0;
			m3=0;
			m4=0;
		}
	}
}