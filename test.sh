#!/bin/bash

BUZZER_GPIO=4
LED_GPIO=2
KEY_GPIO=3

gpio mode $BUZZER_GPIO out
gpio mode $LED_GPIO out
gpio mode $KEY_GPIO in

trap 'onCtrlC' INT
function onCtrlC () {
        echo 'exit'
        exit 0
}

echo "==== buzzer test ===="

for((i=0;i<5;i++)); do
    gpio write $BUZZER_GPIO 1
    sleep 0.5
    gpio write $BUZZER_GPIO 0
    sleep 0.5
done

echo "==== led test ===="
for((i=0;i<5;i++)); do
    gpio write $LED_GPIO 1
    sleep 0.5
    gpio write $LED_GPIO 0
    sleep 0.5
done

echo "==== key test ===="
echo "please press the button... input Ctrl-C to exit."

LAST_KEY_VALUE=$(gpio read $KEY_GPIO)
CURR_KEY_VALUE=$LAST_KEY_VALUE

while [ 1 ]; do
    CURR_KEY_VALUE=$(gpio read $KEY_GPIO)

    if [ ${CURR_KEY_VALUE} != ${LAST_KEY_VALUE} ]; then
        echo "key value: ${CURR_KEY_VALUE}"
        LAST_KEY_VALUE=$CURR_KEY_VALUE
    fi

done

exit 0
