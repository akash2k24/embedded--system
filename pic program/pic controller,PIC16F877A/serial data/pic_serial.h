  
void Serial_Init(unsigned long int);
void Serial_Out(unsigned char);
void Serial_Conout(const unsigned char *,unsigned char);
void Baudrate(unsigned long int);
void Receive(unsigned char);
void serial_Decimal4(unsigned char val); 
void serial_Decimal3(unsigned char val); 
void serial_Decimal2(unsigned char val); 

void Serial_Init(unsigned long int baud)
{  
	Baudrate(baud);
	SYNC = 0;		     // asynchronous mode
	SPEN = 1;		     // serial port enable
	TXEN = 1;		     // tx enable
	GIE=1;
	PEIE=1;
	RCIE = 0;			 // interrupt set
	CREN = 0;		     // rx enable	
}

void Serial_Out(unsigned char val)
{
	TXREG =val;
	while(!TXIF);
	TXIF = 0;
}


void Serial_Conout(const unsigned char *data,unsigned char n)
{
	unsigned char ser_j;
	for(ser_j=0;ser_j<n;ser_j++)
	{
		Serial_Out(data[ser_j]);
	}
}

void Baudrate(unsigned long int baud)
{
	if(baud==110)				//Crystal Freq 1 Mhz
	{
		SPBRG = 141;          // for 110 baud rate
		BRGH = 0;		     // baud rate low		
	}
	else if(baud==1200)			//Crystal Freq 4 Mhz
	{
		SPBRG = 51;          // for 1200 baud rate
		BRGH = 0;		     // baud rate high		
	}
	else if(baud==2400)
	{
		SPBRG = 25;          // for 2400 baud rate
		BRGH = 0;		     // baud rate high		
	}
	else if(baud==4800)
	{
		SPBRG = 12;          // for 4800 baud rate
		BRGH = 0;		     // baud rate high		
	}
	else if(baud==9600)
	{
		SPBRG = 25;          // for 9600 baud rate
		BRGH = 1;		     // baud rate high		
	}
	else if(baud==57600)
	{
		SPBRG = 20;          // for 57600 baud rate
		BRGH = 1;		     // baud rate high		
	}
	else if(baud==115200)
	{
		SPBRG = 10;          // for 115200 baud rate
		BRGH = 1;		     // baud rate high		
	}	
}

void Receive(unsigned char rece)
{
	if(rece==1)
	{
		RCIE = 1;			 // interrupt set
		CREN = 1;		     // rx enable		
	}
	else
	{
		RCIE = 0;			 // interrupt set
		CREN = 0;		     // rx enable		
	}	
}	
//////SERIAL DECIMAL/////////
/*void serial_Decimal4(unsigned int val) 
  {
    unsigned int Lcd_th,Lcd_thr,Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
    val = val%10000;
    Lcd_th=val/1000;
    Lcd_thr=val%1000;
    Lcd_h=Lcd_thr/100;
    Lcd_hr=Lcd_thr%100;
    Lcd_t=Lcd_hr/10;
    Lcd_o=Lcd_hr%10;
  
    
    Serial_Out(Lcd_th+0x30);
    Serial_Out(Lcd_h+0x30);
    Serial_Out(Lcd_t+0x30);
    Serial_Out(Lcd_o+0x30);
  }*/
void serial_Decimal3(unsigned char val)
  {
      unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
      Lcd_h=val/100;
      Lcd_hr=val%100;
      Lcd_t=Lcd_hr/10;
      Lcd_o=Lcd_hr%10;
    
      
      Serial_Out(Lcd_h+0x30);
      Serial_Out(Lcd_t+0x30);
      Serial_Out(Lcd_o+0x30);
  }

void serial_Decimal2(unsigned char val)
  {
    unsigned int Lcd_hr,Lcd_t,Lcd_o;
    Lcd_hr=val%100;
    Lcd_t=Lcd_hr/10;
    Lcd_o=Lcd_hr%10;
  
    Serial_Out(Lcd_t+0x30);
    Serial_Out(Lcd_o+0x30);
  }
