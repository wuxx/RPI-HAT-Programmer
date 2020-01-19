#!/bin/bash

#24C01  128B
#24C02  256B
#24C04  512B
#24C08  1KB
#24C16  2KB
#24C32  4KB
#24C64  8KB
#24C128 16KB
#24C256 32KB
#24C512 64KB

#export CHIPNAME="24C32"
#export EEP_SIZE="4096"

export CHIPNAME="24C128"
export EEP_SIZE="16384"

#8  Use 8bit  address mode for 24c0x...24C16
#16 Use 16bit address mode for 24c32...24C256
export ADDR_MODE=16
