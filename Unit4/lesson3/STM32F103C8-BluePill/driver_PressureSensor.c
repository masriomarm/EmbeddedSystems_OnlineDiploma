/**
 * @file driver_PressureSensor.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief pressure sensor driver source file
 * @version 0.1
 * @date 2022-02-25
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "driver_PressureSensor.h"
#include "driver_provided.h"

/**
 * @brief map sensors output to pressure value and return the value. @n
 * @details function invoke getPressureVal function to read the value over the GPIO. @n
 * function convert the voltage read from the sensors to relative pressure value. @n
 * @return int
 */
int PressureSensor_set_pressure(void) {
    int pressureval = getPressureVal();  /// assuming a unity conversion.
    return pressureval;
}
