/**
 * @file collision-avoidance.h
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2021-12-21
 *
 * @copyright Copyright (c) 2021
 *
 */


#ifndef COLLISION_AVOIDANCE_H_
    #define COLLISION_AVOIDANCE_H_
#include "state.h"
    enum{
        CA_waiting,
        CA_driving
    }CA_state_id;

STATE_DEFINE(CA_waiting);
STATE_DEFINE(CA_driving);
int US_get_distance();
int DCM_set_speed(int req_speed);
#endif
