#ifndef MAINALG_H_
#define MAINALG_H_

#include "driver_PressureSensor.h"
#include "driver_provided.h"
#include "globals.h"

#define STATE(x)       void x(void)

#define PRESSURE_THRESHOLD 20
#define ALARM_PERIOD       6e3

STATE(HighPressure);
STATE(SafePressure);
STATE(ReceivingPressureVal);

void init(void);

#endif  ///< MAINALG_H_
