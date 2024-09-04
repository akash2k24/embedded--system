#ifndef MLX90614_H
#define MLX90614_H

#include <xc.h>

// I2C Addresses and Commands
#define MLX90614_I2C_ADDRESS  0x5A  // Default I2C address of the MLX90614
#define MLX90614_TA           0x06  // RAM address for ambient temperature
#define MLX90614_TOBJ1        0x07  // RAM address for object temperature

// Function Prototypes
void MLX90614_Init(void);
float MLX90614_ReadAmbientTemp(void);
float MLX90614_ReadObjectTemp(void);

#endif
