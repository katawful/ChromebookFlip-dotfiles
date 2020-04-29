#!/bin/sh

# set up variables
MAX=$(cat /sys/class/power_supply/bq27500-0/uevent | grep POWER_SUPPLY_CHARGE_FULL= | cut -c 26-)
CURR=$(cat /sys/class/power_supply/bq27500-0/uevent | grep POWER_SUPPLY_CHARGE_NOW= | cut -c 25-)
STATE=$(cat /sys/class/power_supply/bq27500-0/uevent | grep POWER_SUPPLY_STATUS= | cut -c 21-)

#echo $MAX
#echo $CURR
#echo $STATE

# create percentage
CURR=$(( $CURR*100 ))
#echo $CURR
PER=$(( $CURR/$MAX ))
#echo "$PER%"


# discharging status
if [ $STATE = "Discharging" ]; then
	if [ $PER -ge 95 ]; then
		echo " $PER"
	elif [ $PER -ge 90 ] && [ $PER -lt 95 ]; then
		echo " $PER"
	elif [ $PER -ge 80 ] && [ $PER -lt 90 ]; then
		echo " $PER"
	elif [ $PER -ge 70 ] && [ $PER -lt 80 ]; then
		echo " $PER"
	elif [ $PER -ge 60 ] && [ $PER -lt 70 ]; then
		echo " $PER"
	elif [ $PER -ge 50 ] && [ $PER -lt 60 ]; then
		echo " $PER"
	elif [ $PER -ge 40 ] && [ $PER -lt 50 ]; then
		echo " $PER"
	elif [ $PER -ge 30 ] && [ $PER -lt 40 ]; then
		echo " $PER"
	elif [ $PER -ge 20 ] && [ $PER -lt 30 ]; then
		echo " $PER"
	elif [ $PER -ge 10 ] && [ $PER -lt 20 ]; then
		echo " $PER"
	fi
elif [ "$STATE" = Charging ]; then
	if [ $PER -ge 95 ]; then
		echo " $PER"
	elif [ $PER -ge 90 ] && [ $PER -lt 95 ]; then
		echo " $PER"
	elif [ $PER -ge 80 ] && [ $PER -lt 90 ]; then
		echo " $PER"
	elif [ $PER -ge 70 ] && [ $PER -lt 80 ]; then
		echo " $PER"
	elif [ $PER -ge 60 ] && [ $PER -lt 70 ]; then
		echo " $PER"
	elif [ $PER -ge 50 ] && [ $PER -lt 60 ]; then
		echo " $PER"
	elif [ $PER -ge 40 ] && [ $PER -lt 50 ]; then
		echo " $PER"
	elif [ $PER -ge 30 ] && [ $PER -lt 40 ]; then
		echo " $PER"
	elif [ $PER -ge 20 ] && [ $PER -lt 30 ]; then
		echo " $PER"
	elif [ $PER -ge 10 ] && [ $PER -lt 20 ]; then
		echo " $PER"
	fi

fi
