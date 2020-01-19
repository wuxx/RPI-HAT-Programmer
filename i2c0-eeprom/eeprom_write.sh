#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

if [ ${#1} -eq 0 ]; then
    IMAGE_FILE=eeprom_image.bin
else
    IMAGE_FILE=$1
fi

. ./env.sh

EEPROG=src/eeprog-0.7.6-tear12/eeprog

$EEPROG -${ADDR_MODE} -f -w 0x0 -t 5 -i $IMAGE_FILE /dev/i2c-0 0x50

#./src/eeprog-0.7.6-tear12/eeprog -f -16 -i 1.bin -w 0x00 -t 5 /dev/i2c-0 0x50
