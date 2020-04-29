#!/bin/sh

# get total and used memory
TOT=$(free | awk 'FNR == 2 {print $2}')
USED=$(free | awk 'FNR == 2{print $3}')
# make percentage
USED=$(( $USED*100 ))
PER=$(( $USED/$TOT ))

# put it all together
echo " Used: $PER%"
