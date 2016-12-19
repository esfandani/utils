#!/bin/bash
curr=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
if [ $curr -gt 287 ]; then
   curr=$((curr-287));
   echo $curr  > /sys/class/backlight/intel_backlight/brightness;
fi
