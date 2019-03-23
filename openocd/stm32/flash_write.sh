#!/bin/bash

if [ ${#1} -eq 0 ]; then
	echo "usage: $0 image-file"
    exit 0
fi

CURRENT_DIR=$(cd $(dirname $0); pwd)

#xxx.hex or xxx.bin
IMAGE_FILE=$1

echo "flash_addr:         $FLASH_ADDR"

EXT="${IMAGE_FILE##*.}"
echo EXT: $EXT

#flash write_image erase xxx.hex;
#flash write_image erase xxx.bin 0x08000000;

if [ "${EXT}" == "hex" ]; then
    TARGET="$IMAGE_FILE"
elif [ "${EXT}" == "bin" ]; then
    TARGET="$IMAGE_FILE $FLASH_ADDR"
else
    echo "illegal suffix [$EXT]"
    exit 1
fi

CONFIG=${CURRENT_DIR}/tcl/target/stm32.cfg

CMD="init;
     halt;
     reset halt;
     flash write_image erase ${TARGET};
     reset;
     shutdown; "

sudo openocd -s ${CURRENT_DIR}/tcl -c "set _CHIPNAME ${CHIPNAME}" -f ${CONFIG} -c "${CMD}"
