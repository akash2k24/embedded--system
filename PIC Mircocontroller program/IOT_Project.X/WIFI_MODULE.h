#ifndef WIFI_MODULE_H
#define WIFI_MODULE_H

#include <xc.h>

// Define the baud rate for UART communication with the Wi-Fi module
#define WIFI_MODULE_BAUD 115200

// Wi-Fi Module Command Definitions (example commands)
#define WIFI_MODULE_CMD_INIT      {"0xAT", 0x0D}       // Example command to initialize the Wi-Fi module
#define WIFI_MODULE_CMD_CONNECT   {"0xAT", 0x0D, 'C', 'O', 'N', 'N', 'E', 'C', 'T'}  // Example command to connect to Wi-Fi
#define WIFI_MODULE_CMD_SEND      {"0xAT", 0x0D, 'S', 'E', 'N', 'D'}  // Example command to send data
#define WIFI_MODULE_CMD_RECEIVE   {"0xAT", 0x0D, 'R', 'E', 'C', 'E', 'I', 'V', 'E'}  // Example command to receive data

// Function Prototypes
void WIFI_Module_Init(void);
void WIFI_Module_Send(unsigned char* data, unsigned char length);
void WIFI_Module_Receive(unsigned char* buffer, unsigned char length);

void UART_Init(unsigned long baud);
void UART_Write(unsigned char data);
unsigned char UART_Read(void);

#endif
