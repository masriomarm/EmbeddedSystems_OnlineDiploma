#include "avr/io.h"
#include "avr/iom32.h"
#include "util/delay.h"


#define SET_BIT(reg,bit)  ((reg) |= 1 << (bit))
#define TGL_BIT(reg,bit)  ((reg) ^= 1 << (bit))
#define CLR_BIT(reg,bit)  ((reg) &= ~(1 << (bit)))
#define RDD_BIT(reg,bit)  ((reg) & (1 << (bit)))
