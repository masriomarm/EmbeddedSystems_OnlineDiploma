#ifndef MAINALG_H_
#define MAINALG_H_

/**
 * @file mainAlg.h
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2022-02-28
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "driver_PressureSensor.h"
#include "driver_provided.h"
#include "globals.h"

#define STATE(x)       void x(void)

#define PRESSURE_THRESHOLD 20
#define ALARM_PERIOD       9e5

STATE(HighPressure);
STATE(SafePressure);
STATE(ReceivingPressureVal);

void init(void);

#endif  ///< MAINALG_H_
