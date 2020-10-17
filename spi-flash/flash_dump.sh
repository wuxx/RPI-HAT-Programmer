#!/bin/bash

#flashrom read
flashrom -p linux_spi:dev=/dev/spidev0.0,spispeed=10000 -r flash_image.bin

