#ifndef MICS5524_H
#define MICS5524_H

#include <xc.h>

// Define the analog pin where MiCS-5524 is connected
#define MICS5524_PIN RA2  // Example: AN2 (RA2)

// Function Prototypes
void MICS5524_Init(void);
unsigned int MICS5524_Read(void);

#endif
