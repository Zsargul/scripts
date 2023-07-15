#!/bin/bash

if [[ $# -ne 1 ]] ; then
	echo -e "Usage: $0 [+|-][value]\nExample: $0 +0.5 (Increases speed by 0.5)"
	exit 1
fi

# Used to increase the sensitivity of my corsair mouse, which is very slow by default
DEVICE_NAME="Corsair CORSAIR SCIMITAR RGB ELITE Gaming Mouse"
ID=10

xinput set-prop "$DEVICE_NAME" 'libinput Accel Speed' $1

