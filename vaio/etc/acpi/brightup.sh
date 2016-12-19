#!/bin/bash
curr=$(cat  /sys/class/backlight/intel_backlight/actual_brightness)
if (( $curr < 4596 )); then
   curr=$((curr+287));
   echo $curr  > /sys/class/backlight/intel_backlight/brightness;
fi
