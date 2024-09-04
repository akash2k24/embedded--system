#ifndef I2C_H
#define I2C_H

#include <xc.h>

// Function Prototypes
void I2C_Init(void);
void I2C_Start(void);
void I2C_RepeatedStart(void);
void I2C_Stop(void);
void I2C_Write(uint8_t data);
uint8_t I2C_Read(uint8_t ack);

#endif
