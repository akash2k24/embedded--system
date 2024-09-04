#ifndef MHZ19_H
#define MHZ19_H

#include <xc.h>

// Define baud rate for UART communication with the sensor
#define MHZ19_BAUD 9600

// MH-Z19 Command Definitions
#define MHZ19_CMD_READ_CO2 {0xFF, 0x01, 0x86, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79}

// Function Prototypes
void MHZ19_Init(void);
unsigned int MHZ19_ReadCO2(void);
void UART_Init(unsigned long baud);
void UART_Write(unsigned char data);
unsigned char UART_Read(void);

#endif
