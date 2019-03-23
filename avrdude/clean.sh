#!/bin/bash

if [ -f /sys/class/gpio/gpio26 ]; then
    echo 26 > /sys/class/gpio/unexport
fi

echo "clean done"
