#ifndef MAX4466_H
#define MAX4466_H

#include <xc.h>

// Define the analog pin where MAX4466 is connected
#define MAX4466_PIN   0  // Example: AN0 (RA0)

// Function Prototypes
void MAX4466_Init(void);
unsigned int MAX4466_Read(void);

#endif
