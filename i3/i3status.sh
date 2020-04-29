#!/bin/sh

i3status | while :

do
	read line
	BAT=$(sh ~/.config/i3/battery.sh)
	echo "$BAT | $line" || exit 1
done
