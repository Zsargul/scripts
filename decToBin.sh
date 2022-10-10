#/usr/bin/bash

if [ $# -eq 0 ] ; then
	echo 'Please provide a decimal number as argument. Example: ./decToBin.sh 132'
	exit 1
fi

echo "obase=2;$1" | bc
