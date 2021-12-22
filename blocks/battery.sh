#!/bin/sh
ICON=""
read -r capacity </sys/class/power_supply/BAT0/capacity
read -r charging </sys/class/power_supply/BAT0/status

case $capacity in
	[0-20])   ICON="";; 
	[21-50])  ICON="";; 
	[51-75])  ICON="";;
	[76-95])  ICON="";;
	[96-100]) ICON="";;
esac

if [ "$capacity" -ge 0 ] && [ "$capacity" -le 24 ]; then
  ICON=" "
elif [ "$capacity" -ge 25 ] &&  [ "$capacity" -le 50 ]; then
  ICON=" ";
elif [ "$capacity" -ge 51 ] &&  [ "$capacity" -le 75 ]; then
  ICON=" ";
elif [ "$capacity" -ge 76 ] &&  [ "$capacity" -le 95 ]; then
  ICON=" ";
elif [ "$capacity" -ge 96 ] &&  [ "$capacity" -le 100 ]; then
  ICON=" ";
fi


CHRGICON=""

case "$charging" in
	"Charging") CHRGICON="[9] " && ICON="[9]$ICON";;
esac

printf "[1]$CHRGICON $ICON %s%%" "$capacity"
