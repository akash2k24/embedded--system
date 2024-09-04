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
#include <stdio.h>
#include "dht22.h"
#include "i2c.h"
#include "mlx90614.h"
#include "max4466.h"
#include "mhz19.h"
#include "mq131.h"
#include "mics5524.h"
#include "rf_module.h"
#include "wifi_module.h"
#define _XTAL_FREQ 20000000     // Define crystal frequency for delays

// Pin definitions
#define DHT22_PIN     RB0
#define SDA_PIN       RC4
#define SCL_PIN       RC3
#define MAX4466_PIN   RA0
#define MHZ19_TX_PIN  RC6
#define MHZ19_RX_PIN  RC7
#define MQ131_PIN     RA1
#define MICS5524_PIN  RA2
#define RF_MODULE_PIN RB1
#define WIFI_MODULE_PIN RB2
void main();
uint16_t MLX90614_Read16(uint8_t command);
void UART_Init(unsigned long baud);
float MLX90614_CalculateTemperature(uint16_t rawData) ;
void init_pins(void) {
    // Configure DHT22 pin as input
    TRISB0 = 1; // Set RB0 as input for DHT22
    
    // Configure I2C pins for MLX90614
    //TRISC4 = 1; // Set RC4 as input (SDA)
   // TRISC3 = 1; // Set RC3 as input (SCL)
    
    // Configure analog pins for sensors
    TRISA0 = 1; // Set RA0 as input for MAX4466
    TRISA1 = 1; // Set RA1 as input for MQ131
    TRISA2 = 1; // Set RA2 as input for MiCS-5524
    
    // Configure UART pins for MH-Z19
    //TRISC6 = 1; // Set RC6 as input for TX
    //TRISC7 = 1; // Set RC7 as input for RX
    
    // Configure pins for RF and Wi-Fi modules
    TRISB1 = 0; // Set RB1 as output for RF module
    TRISB2 = 0; // Set RB2 as output for Wi-Fi module
    
    // Configure analog pins
    ADCON1 = 0x00; // Set PORTA as analog input
}
void init_system(void) {
    // Initialize sensors
    DHT22_Init();
    MLX90614_Init();
    I2C_Init();
    MAX4466_Init();
    MHZ19_Init();
    MQ131_Init();
    MICS5524_Init();
    
    // Initialize communication modules
    RF_Module_Init();
    //WiFi_Module_Init();
}
void main(void) 
{
    // Variables to store sensor data
    float temperature, humidity;
    float ir_temp;
    int sound_level;
    int co2_level;
    int ozone_level;
    int gas_level;
    char data_buffer[20];
    unsigned char txData[] = "Hello Wi-Fi!";
    unsigned char rxBuffer[20];
    // Initialize pins and system
    init_pins();
    init_system();

    while(1) {
        // Read data from sensors
        temperature = DHT22_ReadTemperature();
        humidity = DHT22_ReadHumidity();
        ir_temp = MLX90614_ReadAmbientTemp();
        sound_level = MAX4466_Read();
        co2_level = MHZ19_ReadCO2();
        ozone_level = MQ131_Read();
        gas_level = MICS5524_Read();
        
        // Format the sensor data
        sprintf(data_buffer, "Temp:%.2f",temperature);
        sprintf(data_buffer,"Humidity:%.2f",humidity);
        sprintf(data_buffer,"Sound:%d",sound_level);
        sprintf(data_buffer,"CO2:%d",co2_level);
        sprintf(data_buffer,"Ozone:%d",ozone_level);
        sprintf(data_buffer,"Gas:%d",gas_level);
        /*// Transmit the formatted data
        RF_Module_Transmit(data_buffer);
        WiFi_Module_Transmit(data_buffer);
        */
        // Delay before the next reading
        __delay_ms(1000);
     
    
    // Initialize the Wi-Fi module
    WIFI_Module_Init();
    
    while (1) {
        // Send data
        WIFI_Module_Send(txData, sizeof(txData) - 1);
        
        // Receive data
        WIFI_Module_Receive(rxBuffer, sizeof(rxBuffer));
        
        // Process received data (e.g., display or log)
    }
}
}

//#define __delay_ms(x)
//_delay((unsigned long)((x)*(_XTAL_FREQ/4000.0)))

// Internal functions for DHT22 communication
static void DHT22_StartSignal(void);
static uint8_t DHT22_CheckResponse(void);
static uint8_t DHT22_ReadByte(void);

void DHT22_Init(void) {
    // Initial pin setup (Input)
    TRISB0 = 1; // Set DHT22_PIN as input initially
}

float DHT22_ReadTemperature(void) {
    uint8_t data[5] = {0};
    float temperature = 0.0;

    // Send start signal and read response
    DHT22_StartSignal();
    if (DHT22_CheckResponse()) {
        // Read the data (40 bits = 5 bytes)
        for (int i = 0; i < 5; i++) {
            data[i] = DHT22_ReadByte();
        }
        
        // Calculate temperature (in Celsius)
        temperature = ((data[2] & 0x7F) << 8 | data[3]) * 0.1;
        if (data[2] & 0x80) {
            temperature = -temperature;
        }
    }
    
    return temperature;
}

float DHT22_ReadHumidity(void) {
    uint8_t data[5] = {0};
    float humidity = 0.0;

    // Send start signal and read response
    DHT22_StartSignal();
    if (DHT22_CheckResponse()) {
        // Read the data (40 bits = 5 bytes)
        for (int i = 0; i < 5; i++) {
            data[i] = DHT22_ReadByte();
        }
        
        // Calculate humidity
        humidity = (data[0] << 8 | data[1]) * 0.1;
    }
    
    return humidity;
}

static void DHT22_StartSignal(void) {
    // Send start signal
    TRISB0 = 0x00; // Set DHT22_PIN as output
    RB0 = 0;  // Pull the pin low
    __delay_ms(18); // Wait 18 ms
    RB0 = 1;  // Pull the pin high
    __delay_us(30); // Wait 20-40 us
    TRISB0 = 0x01; // Set DHT22_PIN as input
}

static uint8_t DHT22_CheckResponse(void) {
    uint8_t response = 0;
    __delay_us(40);
    if (!RB0) {
        __delay_us(80);
        if (RB0) response = 1;
        __delay_us(40);
    }
    return response;
}

static uint8_t DHT22_ReadByte(void) {
    uint8_t i, byte = 0;
    for (i = 0; i < 8; i++) {
        while (!RB0); // Wait for the pin to go high
        __delay_us(30); // Wait for 30 us
        if (RB0) {
            byte |= (1 << (7 - i)); // If the pin is high after 30 us, it's a '1'
        }
        while (RB0); // Wait for the pin to go low
    }
    return byte;
}
void MLX90614_Init(void) {
    // Initialize I2C communication
    I2C_Init();
}

float MLX90614_ReadAmbientTemp(void) {
    uint16_t rawData = MLX90614_Read16(MLX90614_TA);
    return MLX90614_CalculateTemperature(rawData);
}

float MLX90614_ReadObjectTemp(void) {
    uint16_t rawData = MLX90614_Read16(MLX90614_TOBJ1);
    return MLX90614_CalculateTemperature(rawData);
}

uint16_t MLX90614_Read16(uint8_t command) {
    uint16_t data;
    
    I2C_Start();                                // Start I2C communication
    I2C_Write((MLX90614_I2C_ADDRESS << 1) | 0); // Send sensor address + write bit
    I2C_Write(command);                         // Send command (e.g., read temperature)
    I2C_RepeatedStart();                        // Repeat start
    I2C_Write((MLX90614_I2C_ADDRESS << 1) | 1); // Send sensor address + read bit
    
    data = I2C_Read(1);                         // Read LSB and acknowledge
    data |= I2C_Read(0) << 8;                   // Read MSB without acknowledgment
    
    I2C_Stop();                                 // Stop I2C communication
    
    return data;
}

float MLX90614_CalculateTemperature(uint16_t rawData) 
{
    return (rawData * 0.02) - 273.15; // Convert to Celsius
}
void I2C_Init(void) {
    SSPCON2 = 0x28; // I2C Master mode, clock = FOSC / (4 * (SSPADD + 1))
    //SSPCON2 = 0;
    SSPADD = ((_XTAL_FREQ / 4) / 100000) - 1; // Set clock speed to 100kHz
    SSPSTAT = 0;
}

void I2C_Start(void) {
    SEN = 1;            // Initiate start condition
    while (SEN);        // Wait until start condition is completed
}

void I2C_RepeatedStart(void) {
    RSEN = 1;           // Initiate repeated start condition
    while (RSEN);       // Wait until repeated start condition is completed
}

void I2C_Stop(void) {
    PEN = 1;            // Initiate stop condition
    while (PEN);        // Wait until stop condition is completed
}

void I2C_Write(uint8_t data) {
    SSPBUF = data;      // Write data to SSPBUF
    while (BF);         // Wait until data is transmitted
    while (SSPCON2bits.ACKSTAT); // Wait until ACK received
}

uint8_t I2C_Read(uint8_t ack) {
    uint8_t data;
    
    RCEN = 1;           // Enable receive mode for I2C
    while (!SSPSTATbits.BF); // Wait until the buffer is full
    data = SSPBUF;      // Read data from buffer
    
    // Send ACK or NACK
    if (ack) {
        ACKDT = 0;      // Acknowledge data
    } else {
        ACKDT = 1;      // Not acknowledge data
    }
    
    ACKEN = 1;          // Send acknowledge sequence
    while (ACKEN);      // Wait for acknowledgment sequence to complete
    
    return data;
}
void MAX4466_Init(void) {
    // Initialize ADC
    ADCON0 = 0x01;  // Select AN0 (RA0) as the input channel
    ADCON1 = 0x0E;  // Configure RA0/AN0 as analog, others as digital
    //ADCON2 = 0x89;  // Right justified, 8 TAD, Fosc/8
    
    // Configure the pin as an input
    TRISA0 = 1; // Set RA0/AN0 as input
}

unsigned int MAX4466_Read(void) {
    // Start ADC conversion
    ADCON0bits.GO_nDONE = 1;
    while (ADCON0bits.GO_nDONE);  // Wait for conversion to complete
    
    // Return the result
    return ((ADRESH << 8) + ADRESL);  // Combine the 10-bit result
}
void MHZ19_Init(void) {
    // Initialize UART
    UART_Init(MHZ19_BAUD);
}

unsigned int MHZ19_ReadCO2(void) {
    unsigned char command[] = MHZ19_CMD_READ_CO2;
    unsigned char response[9];
    unsigned int co2;

    // Send command to read CO2 concentration
    for (int i = 0; i < 9; i++) {
        UART_Write(command[i]);
    }

    // Read the 9-byte response
    for (int i = 0; i < 9; i++) {
        response[i] = UART_Read();
    }

    // Calculate CO2 concentration from response
    co2 = (response[2] << 8) | response[3];

    return co2;
}


void MQ131_Init(void) {
    // Initialize ADC
    ADCON0 = 0x05;  // Select AN1 (RA1) as the input channel
    ADCON1 = 0x0E;  // Configure RA1/AN1 as analog, others as digital
    //ADCON2 = 0x89;  // Right justified, 8 TAD, Fosc/8
    
    // Configure the pin as an input
    TRISA1 = 1; // Set RA1/AN1 as input
}

unsigned int MQ131_Read(void) {
    // Start ADC conversion
    ADCON0bits.GO_nDONE = 1;
    while (ADCON0bits.GO_nDONE);  // Wait for conversion to complete
    
    // Return the result
    return ((ADRESH << 8) + ADRESL);  // Combine the 10-bit result
}
void MICS5524_Init(void) {
    // Initialize ADC
    ADCON0 = 0x09;  // Select AN2 (RA2) as the input channel
    ADCON1 = 0x0E;  // Configure RA2/AN2 as analog, others as digital
    //ADCON2 = 0x89;  // Right justified, 8 TAD, Fosc/8
    
    // Configure the pin as an input
    TRISA2 = 1; // Set RA2/AN2 as input
}

unsigned int MICS5524_Read(void) {
    // Start ADC conversion
    ADCON0bits.GO_nDONE = 1;
    while (ADCON0bits.GO_nDONE);  // Wait for conversion to complete
    
    // Return the result
    return ((ADRESH << 8) + ADRESL);  // Combine the 10-bit result
}

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
    BRGH = 0;  // Low-speed mode
    SYNC = 0;  // Asynchronous mode
    SPEN = 1;  // Enable serial port

    TXEN = 1;  // Enable transmitter
    CREN = 1;  // Enable continuous reception
}

void UART_Write(unsigned char data) {
    while (!TRMT);  // Wait until buffer is empty
    TXREG = data;  // Transmit data
}

unsigned char UART_Read(void) {
    while (!RCIF);  // Wait for reception to complete
    return RCREG;  // Return received data
}


