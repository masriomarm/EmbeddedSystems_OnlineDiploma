/**
 * @file driver_PressureSensor.h
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief pressure sensor driver header file.
 * @version 0.1
 * @date 2022-02-25
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef DRIVER_PRESSURESENSOR_H_
#define DRIVER_PRESSURESENSOR_H_

#include "globals.h"
#define PULL_TIME 1e3

/// function calls

int  PressureSensor_set_pressure(void);

#endif  ///< DRIVER_PRESSURESENSOR_H_
