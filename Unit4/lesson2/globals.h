#ifndef GLOBALS_H_
#define GLOBALS_H_
#include <stdio.h>
extern void(*ST_CA_ptr)(); ///use this pointer to switch between states
extern void(*ST_DCM_ptr)(); ///use this pointer to switch between states
extern void(*ST_US_ptr)(); ///use this pointer to switch between states
extern int CA_speed;
extern int CA_distance;
extern int CA_threshold;
#endif
