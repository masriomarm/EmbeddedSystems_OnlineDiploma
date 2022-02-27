#ifndef GLOBALS_H_
#define GLOBALS_H_

/**
 * @file globals.h
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief contains global state pointers
 * @version 0.1
 * @date 2022-02-26
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "driver_PressureSensor.h"
#include "driver_provided.h"
#include "stdint.h"

void (*state_ptr_main)(void);
void (*state_ptr_sensor_pressure)(void);
void (*state_ptr_actuator_alarm)(void);

extern int AlarmFlag;

#endif  ///< GLOBALS_H_
