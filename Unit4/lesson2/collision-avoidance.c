/**
 * @file collision-avoidance.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2021-12-21
 *
 * @copyright Copyright (c) 2021
 *
 */

#include "collision-avoidance.h"
#include "stdio.h"

void(*ST_CA_ptr)(); ///use this pointer to switch between states
int CA_speed=0;
int CA_distance=0;
int CA_threshold=50;

STATE_DEFINE(CA_waiting)
{
    //state name
    CA_state_id = CA_waiting;
    printf("\tCA_waiting state:\n>>> curr distance = %d,\tcurr speed=%d\n",CA_distance,CA_speed);
    //state action
    CA_speed = 0;
    DCM_set_speed(CA_speed);
    // send speed to motor
    CA_distance = US_get_distance();
    //event check

    ST_CA_ptr= (CA_distance<=CA_threshold) ? STATE(CA_waiting) : STATE(CA_driving);
    CA_speed= (CA_distance<=CA_threshold) ? 0 : 30;
}

STATE_DEFINE(CA_driving)
{
    //state name
    CA_state_id = CA_driving;
    printf("\tCA_driving state:\n>>> curr distance = %d,\tcurr speed=%d\n",CA_distance,CA_speed);
    //state action
    CA_speed = 30;
    DCM_set_speed(CA_speed);
    // send speed to motor
    CA_distance = US_get_distance();

    //event check
    ST_CA_ptr= (CA_distance<=CA_threshold) ? STATE(CA_waiting) : STATE(CA_driving);
    CA_speed= (CA_distance<=CA_threshold) ? 0 : 30;
}
