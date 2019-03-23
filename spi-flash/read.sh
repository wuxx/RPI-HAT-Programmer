#!/bin/bash

#flashrom read
flashrom -p linux_spi:dev=/dev/spidev0.0 -r flash_image.bin

