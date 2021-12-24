#ifndef 	ULTRASONIC_SENSOR_H_
    #define ULTRASONIC_SENSOR_H_

    #include "state.h"
    enum{
        US_busy,
    }US_state_id;

STATE_DEFINE(US_busy);

#endif // ULTRASONIC_SENSOR_H_
