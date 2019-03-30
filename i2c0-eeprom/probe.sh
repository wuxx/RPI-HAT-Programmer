#!/bin/bash

echo "i2c-0"
i2cdetect -r -y 0

echo "i2c-1"
i2cdetect -r -y 1
