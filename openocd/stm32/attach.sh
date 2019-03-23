#!/bin/bash

if [ ${#CHIPNAME} -eq 0 ]; then
    echo "CHIPNAME undefined, exit."
    exit
fi

#use "$telnet localhost 4444" to debug the chip
sudo openocd -c "set _CHIPNAME ${CHIPNAME}" -f tcl/target/stm32.cfg
