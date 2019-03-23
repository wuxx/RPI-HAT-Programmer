#!/bin/bash

#flashrom write
flashrom -p linux_spi:dev=/dev/spidev0.0 -VVV -w flash_image.bin

