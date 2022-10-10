#/usr/bin/bash

if [ $# -eq 0 ] ; then
	echo 'Please provide a binary number as argument. Example: ./binToDec.sh 1001010'
	exit 1
fi

echo "ibase=2;$1" | bc
