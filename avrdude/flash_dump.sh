#!/bin/sh

if [ ${#1} -eq 0 ]; then
    IMAGE_FILE=flash_image.bin
else
    IMAGE_FILE=$1
fi

CURRENT_DIR=$(cd $(dirname $0); pwd)

#xxx.hex or xxx.bin


echo "flash_addr:         $FLASH_ADDR"

cd ${CURRENT_DIR}

sudo avrdude -C avrdude.conf -c linuxgpio -p ${CHIPNAME} -V -U "flash:r:${IMAGE_FILE}:r"
