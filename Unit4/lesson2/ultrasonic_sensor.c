#include "ultrasonic_sensor.h"
#include "globals.h"
#include "stdlib.h"

int measured_distance=0;
void(*ST_US_ptr)(); ///use this pointer to switch between states


int US_get_distance()
{
    measured_distance=  (45+(rand()%11));
    ST_US_ptr= (measured_distance<30) ? STATE(US_busy) : STATE(US_busy);

    ST_US_ptr();
    return measured_distance;
}

STATE_DEFINE(US_busy)
{
    //state name
    US_state_id = US_busy;
    printf("\tultrasonic sensor_busy state:\n>>>\tmeasured distance=%d\n",measured_distance);

    //state action

    // send speed to motor circuitry pins

    //event check
}

