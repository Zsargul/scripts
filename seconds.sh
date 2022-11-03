#!/bin/bash

if [ $# -eq 0 ] ; then
	echo 'Please provide an input in seconds. Example: seconds.sh 0.0034'
	exit 1
elif [ $1 == "help" ] ; then
	echo "Seconds to microseconds: Multiply value by 1000"
	echo "Seconds to milliseconds: Multiply value by 1,000,000"
	echo "Milliseconds to seconds: Divide value by 1000"
	echo "Milliseconds to microseconds: Multiply the value by 1000"
	echo "Microseconds to seconds: Divide the value by 1,000,000"
	echo "Microseconds to milliseconds: Divide the value by 1000"
	exit 0
fi

arg=$1
mcs=$(expr $arg*1000000 | bc)
mls=$(expr $arg*1000 | bc)

echo "$1 seconds:"
echo "Microseconds: $mcs"
echo "Milliseconds: $mls"
