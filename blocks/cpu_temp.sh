#!/bin/sh

ICONn=" " # icon for normal temperatures
ICONc=" [8] " # icon for critical temperatures

crit=70 # critical temperature

read -r temp </sys/class/thermal/thermal_zone0/temp
temp="${temp%???}"

if [ "$temp" -lt "$crit" ] ; then
    printf "$ICONn%s°C[1]" "$temp"
else
    printf "$ICONc%s°C[1]" "$temp"
fi
