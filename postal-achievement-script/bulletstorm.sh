#!/bin/bash

# This script should only be used to farm the "Bulletstorm" achievement. For the remaining achievements,
# see "EZ-mart.sh"

# To use this script, play "Gauntlet" mode until you reach level 4, "Have a blast".. Once you load in, save
# so you don't have to play the previous 3 levels in the future, minimize the game, and run this script.

window=$(xdotool search --name Postal | head -1)
args="--window $window"

while true ; do
	# Replay the level and shoot AA-12 10 times, then save the game (to prevent loss of progess
	# incase of game crash) and repeat.
	for i in {1..10} ; do
		xdotool key $args Return; echo "Starting run $i"
		xdotool sleep 1

		# Shoot AA-12 for 10.5 seconds
		xdotool key $args 3 
		xdotool keydown $args Right
		xdotool sleep 10.5
		xdotool keyup $args Right 

		# Kill self and restart
		echo "Restarting..."; xdotool key $args k
		xdotool sleep 2
		xdotool key $args space # Rejuvinate
		xdotool sleep 3
		xdotool key $args space # Restart level
	done 

	xdotool sleep 1

	saveSlot=7 # Change this to the number of the saveslot you want to script to automatically save
	           # for you. Default is 7.

	echo "SAVING GAME IN SLOT $saveSlot"
	xdotool key $args Escape
	xdotool sleep 1
	xdotool key $args Down
	xdotool sleep 1
	xdotool key $args Return
	xdotool sleep 1

	for i in $( eval echo {1..$saveSlot} ) ; do
		xdotool key $args Down
		xdotool sleep 0.2
	done

	xdotool key $args Return
	xdotool key $args Escape
done
