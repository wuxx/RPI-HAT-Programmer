#!/bin/bash

#xxx.hex or xxx.bin

#stm32f103rbt6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00020000 #128KB

#stm32f103c8t6
FLASH_ADDR=0x08000000
FLASH_SIZE=0x00010000 #64KB

#stm32f030c8t6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00010000 #64KB

CURRENT_DIR=$(cd $(dirname $0); pwd)

#CONFIG=${CURRENT_DIR}/tcl/target/stm32f1x_sysfsgpio_swd.cfg
#CONFIG=${CURRENT_DIR}/tcl/target/stm32f1x_bcm2835gpio_swd.cfg

CONFIG=${CURRENT_DIR}/tcl/target/stm32.cfg

sudo openocd -c "set _CHIPNAME ${CHIPNAME}" -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    dump_image flash_image.bin ${FLASH_ADDR} ${FLASH_SIZE}
    reset;
    shutdown;
"
