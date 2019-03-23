#!/bin/bash

if [ ${#1} -eq 0 ]; then
    echo "usage: $0 image-file"
    exit 0
fi

CURRENT_DIR=$(cd $(dirname $0); pwd)
cd ${CURRENT_DIR}

#xxx.hex or xxx.bin
IMAGE_FILE="$1"

EXT="${IMAGE_FILE##*.}"
echo EXT: $EXT


if [ "${EXT}" == "hex" ]; then
    MEM_OPERATION="flash:w:${IMAGE_FILE}:i"
elif [ "${EXT}" == "bin" ]; then
    MEM_OPERATION="flash:w:${IMAGE_FILE}:r"
else
    echo "illegal suffix [$EXT]"
    exit 1
fi

sudo avrdude -C avrdude.conf -c linuxgpio -p ${CHIPNAME} -V -U ${MEM_OPERATION}
