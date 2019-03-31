#!/bin/bash

if [ ${#1} -eq 0 ]; then
    IMAGE=flash_image.bin
else
    IMAGE=$1
fi

#flashrom write
flashrom -p linux_spi:dev=/dev/spidev0.0 -VVV -w ${IMAGE}

