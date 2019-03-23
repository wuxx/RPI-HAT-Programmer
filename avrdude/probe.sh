#!/bin/sh

MODEL=$1
CURRENT_DIR=$(cd $(dirname $0); pwd)

if [ ${#MODEL} -eq 0 ]; then
    MODEL="m328p"
fi

cd ${CURRENT_DIR}
sudo avrdude -C avrdude.conf -c linuxgpio -p $MODEL
