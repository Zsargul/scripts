#/bin/sh

# Script for displaying volume using pamixer. Requires pamixer, pulseaudio 
# and optionally pulsemixer for the click action.

# Click Action
case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e pulsemixer ;;
esac

# Muted
[ $(pamixer --get-mute) = true ] && echo 🔇 && exit

vol="$(pamixer --get-volume)"

if [ "$vol" -gt "80" ] ; then
	icon="🔊"
elif [ "$vol" -gt "40" ] ; then
	icon="🔉"
elif [ "$vol" -gt "0" ] ; then
	icon="🔈"
else
	echo 🔇 && exit
fi

printf "%s\n" "$icon$vol%"

