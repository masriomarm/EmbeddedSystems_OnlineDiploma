#include "dc_motor.h"
#include "globals.h"

void(*ST_DCM_ptr)(); ///use this pointer to switch between states


int DCM_set_speed(int req_Speed)
{
    ST_DCM_ptr= (req_Speed<30) ? STATE(DCM_idle) : STATE(DCM_active);

    ST_DCM_ptr();

    return 0;
}


STATE_DEFINE(DCM_idle)
{
    //state name
    DCM_state_id = DCM_idle;
    printf("\tDC motor_idle state:\n>>>\treq speed=%d\n",CA_speed);

    //state action

    // send speed to motor circuitry pins

    //event check
}

STATE_DEFINE(DCM_active)
{
    //state name
    DCM_state_id = DCM_active;
    printf("\tDC motor_active state:\n>>>\treq speed=%d\n",CA_speed);

    //state action

    // send speed to motor circuitry pins

    //event check

    //event check
}
