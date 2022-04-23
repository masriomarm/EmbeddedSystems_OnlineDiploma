/**
 * @file mainAlg.c
 * @author Omar Elmasri (masri.omarm@gmail.com) @n
 * Embedded systems diploma. Learn in depth.
 * @brief Pressure alarm system. @n
 * System shall trigger an alarm upon exceeding pressure threshold.@n@n
 * @details
 * System shall read pressure value using Pressure sensor circuit provided by
 * the user.@n System shall compare pressure value to hard-coded pressure
 * threshold provided by the user.@n System shall generate an alarm signal to
 * drive alarm circuit provided by the user.@n System shall maintain alarm
 * signal for hard-coded period provided by the user.@n System shall reset alarm
 * value only after the alarm period is over and pressure is below threshold.@n
 *
 * @date 2022-02-21
 * @version 0.1
 *
 * @copyright Copyright (c) 2022
 *
 */
#include "mainAlg.h"

int AlarmFlag = 0;
void (*state_ptr_main)(void);

void init(void) {
    GPIO_INITIALIZATION();
    state_ptr_main = ReceivingPressureVal;
    AlarmFlag      = 0;
}
//[done]: implement states according to design

//[done]: high pressure state

/// represent state where pressure value is above or equal threshold
STATE(HighPressure) {
    /// start alarm.
    AlarmFlag = 0;  /// reverse flag to match reverse polarity provided by the user.
    Set_Alarm_actuator(AlarmFlag);  /// using the driver provided.

    /// start timer
    Delay(ALARM_PERIOD);

    /// switch state
    state_ptr_main = ReceivingPressureVal;
}
//[done]: safe pressure state
/// represent state where pressure value is below threshold
STATE(SafePressure) {
    /// stop alarm
    AlarmFlag = 1;  /// reverse flag to match reverse polarity provided by the user.
    Set_Alarm_actuator(AlarmFlag);  /// using the driver provided

    /// switch state
    state_ptr_main = ReceivingPressureVal;
}
//[done]: receiving pressure state
/// represent state where pressure value is being measured
STATE(ReceivingPressureVal) {
    /// read pressure value
    int pressure = PressureSensor_set_pressure();
    Delay(PULL_TIME);

    /// switch state
    state_ptr_main =
        (pressure >= PRESSURE_THRESHOLD) ? HighPressure : SafePressure;
}
