#!/bin/sh

SSID=$(nmcli | grep "connected to" | cut -d ' ' -f 4- -)

if [[ $SSID = "" ]]; then
	printf "[8] No internet [1]"
else
	printf "[2]  Connected: $SSID [1]"
fi
