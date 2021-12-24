#ifndef 	DC_MOTOR_H_
    #define DC_MOTOR_H_

    #include "state.h"
    enum{
        DCM_idle,
        DCM_active
    }DCM_state_id;

STATE_DEFINE(DCM_idle);
STATE_DEFINE(DCM_active);

#endif // DC_MOTOR_H_
