#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

. ./env.sh

EEPROG=src/eeprog-0.7.6-tear12/eeprog

$EEPROG -${ADDR_MODE} -f -r 0:${EEP_SIZE} -t 5 -o eeprom_image.bin /dev/i2c-0 0x50
