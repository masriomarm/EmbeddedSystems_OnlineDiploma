/**
 * @file main.c
 * @author Omar Elmasri (masri.omarm@gmail.com)
 * @brief   pressure alarm system main file
 * @version 0.1
 * @date 2022-02-28
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "mainAlg.h"

int main(void) {
    init();

    while (1) { state_ptr_main(); }
}
