#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

CONFIG=${CURRENT_DIR}/tcl/target/stm32.cfg

sudo openocd -s ${CURRENT_DIR}/tcl -c "set _CHIPNAME ${CHIPNAME}" -f ${CONFIG} -c \
         "init;
          halt;
          reset halt;
          reset;
          shutdown; "

