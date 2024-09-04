#ifndef MQ131_H
#define MQ131_H

#include <xc.h>

// Define the analog pin where MQ131 is connected
#define MQ131_PIN   1  // Example: AN1 (RA1)

// Function Prototypes
void MQ131_Init(void);
unsigned int MQ131_Read(void);

#endif
