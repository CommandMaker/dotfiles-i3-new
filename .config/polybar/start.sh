#!/bin/bash

monitors=($(xrandr -q | grep "connected" | awk -F " " '{print $1 " "}' | tr -d '\n'))

killall polybar

for monitor in "${monitors[@]}"; do
    MONITOR=$monitor polybar left &
    MONITOR=$monitor polybar center &
    MONITOR=$monitor polybar right &
done
