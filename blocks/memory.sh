#!/bin/sh
MEMORY=$(free -h | grep Mem | awk '{print $3 "/" $2}' | sed 's/i/B/g')

printf "[5]  $MEMORY[1]"
