/**
 * @file statemachine.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief unit4, lesson 2, state machiens
 * @version 0.1
 * @date 2021-12-17
 * @copyright Copyright (c) 2021
 */

#include "collision-avoidance.h"
#include "dc_motor.h"
#include "ultrasonic_sensor.h"
#include <stdlib.h>
#include <unistd.h>
#include "globals.h"

void setup()
{
    ///init drivers
    ///set state pointers
    ST_CA_ptr= STATE(CA_waiting);
    ST_DCM_ptr= STATE(DCM_idle);
}

int main()
{
    setup();
    int bufsize = 300;
    while (bufsize--){
        ST_CA_ptr();
        printf("\n");
    }
}
