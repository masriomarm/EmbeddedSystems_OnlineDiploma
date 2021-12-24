/**
 * @file state.h
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief
 * @version 0.1
 * @date 2021-12-21
 *
 * @copyright Copyright (c) 2021
 *
 */

#ifndef STATE_H_
#define STATE_H_

#define STATE_DEFINE(_statFUN_)     void ST_##_statFUN_()
#define STATE(_statFUN_)			ST_##_statFUN_

#endif
