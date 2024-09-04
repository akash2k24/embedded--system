// PIC16F877A Configuration Bit Settings
// 'C' source line config statements
// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#define _XTAL_FREQ 20000000  // Define the crystal frequency

void RF_Module_Init(void) {
    // Initialize UART for RF module communication
    UART_Init(RF_MODULE_BAUD);
    
    // Send initialization command to RF module
    unsigned char initCommand[] = RF_MODULE_CMD_INIT;
    for (int i = 0; i < sizeof(initCommand); i++) {
        UART_Write(initCommand[i]);
    }
}

void RF_Module_Send(unsigned char* data, unsigned char length) {
    // Send data to RF module
    unsigned char sendCommand[] = RF_MODULE_CMD_SEND;
    for (int i = 0; i < sizeof(sendCommand); i++) {
        UART_Write(sendCommand[i]);
    }
    for (int i = 0; i < length; i++) {
        UART_Write(data[i]);
    }
}

void RF_Module_Receive(unsigned char* buffer, unsigned char length) {
    // Send receive command to RF module
    unsigned char receiveCommand[] = RF_MODULE_CMD_RECEIVE;
    for (int i = 0; i < sizeof(receiveCommand); i++) {
        UART_Write(receiveCommand[i]);
    }

    // Receive data from RF module
    for (int i = 0; i < length; i++) {
        buffer[i] = UART_Read();
    }
}


void WIFI_Module_Init(void) {
    // Initialize UART for Wi-Fi module communication
    UART_Init(WIFI_MODULE_BAUD);
    
    // Send initialization command to Wi-Fi module
    unsigned char initCommand[] = WIFI_MODULE_CMD_INIT;
    for (int i = 0; i <20; i++) {
        UART_Write(initCommand[i]);
    }
}

void WIFI_Module_Send(unsigned char* data, unsigned char length) {
    // Send data to Wi-Fi module
    unsigned char sendCommand[] = "WIFI_MODULE_CMD_SEND";
    for (int i = 0; i < 20; i++) {
        UART_Write(sendCommand[i]);
    }
    for (int i = 0; i < length; i++) {
        UART_Write(data[i]);
    }
}

void WIFI_Module_Receive(unsigned char* buffer, unsigned char length) {
    // Send receive command to Wi-Fi module
    unsigned char receiveCommand[] = "WIFI_MODULE_CMD_RECEIVE";
    for (int i = 0; i < sizeof(receiveCommand); i++) {
        UART_Write(receiveCommand[i]);
    }

    // Receive data from Wi-Fi module
    for (int i = 0; i < length; i++) {
        buffer[i] = UART_Read();
    }
}
void UART_Init(unsigned long baud) {
    //unsigned int x;
    //x = (_XTAL_FREQ - 17 * 64) / (17 * 64);  // Set baud rate for low-speed mode

    // Setting up the TX and RX pins
    TRISC6 = 1;  // TX pin set as output
    TRISC7 = 1;  // RX pin set as input

    SPBRG = 17;   // Load the baud rate generator register
    TXSTAbits.BRGH = 0;  // Low-speed mode
    TXSTAbits.SYNC = 0;  // Asynchronous mode
    RCSTAbits.SPEN = 1;  // Enable serial port

    TXSTAbits.TXEN = 1;  // Enable transmitter
    RCSTAbits.CREN = 1;  // Enable continuous reception
}

void UART_Write(unsigned char data) {
    while (!TXSTAbits.TRMT);  // Wait until buffer is empty
    TXREG = data;  // Transmit data
}

unsigned char UART_Read(void) {
    while (!PIR1bits.RCIF);  // Wait for reception to complete
    return RCREG;  // Return received data
}