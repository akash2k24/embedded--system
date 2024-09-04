#ifndef RF_MODULE_H
#define RF_MODULE_H

#include <xc.h>

// Define the baud rate for UART communication with the RF module
#define RF_MODULE_BAUD 9600

// RF Module Command Definitions (example commands)
#define RF_MODULE_CMD_INIT  {0xAA, 0x01, 0x00}  // Example command to initialize the RF module
#define RF_MODULE_CMD_SEND  {0xAA, 0x02, 0x00}  // Example command to send data
#define RF_MODULE_CMD_RECEIVE {0xAA, 0x03, 0x00}  // Example command to receive data

// Function Prototypes
void RF_Module_Init(void);
void RF_Module_Send(unsigned char* data, unsigned char length);
void RF_Module_Receive(unsigned char* buffer, unsigned char length);

void UART_Init(unsigned long baud);
void UART_Write(unsigned char data);
unsigned char UART_Read(void);

#endif
