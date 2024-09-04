#ifndef DHT22_H
#define DHT22_H

#include <xc.h>

// Define the data pin connected to the DHT22
#define DHT22_PIN     RB0

// Function Prototypes
void DHT22_Init(void);
float DHT22_ReadTemperature(void);
float DHT22_ReadHumidity(void);

#endif
