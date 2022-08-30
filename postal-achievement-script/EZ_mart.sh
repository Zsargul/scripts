#!/bin/bash

# Get the Postal game window and make sure it's focused 
window=$(xdotool search --name Postal)
active=$(xdotool getactivewindow getwindowname)
while [ $active != "Postal" ] ; do
	xdotool windowfocus window
	xdotool sleep 1
	xdotool click 1
	active=$(xdotool getactivewindow getwindowname)
done

while true ; do
	# Check if game window is focused and stop the script if it isn't
	active=$(xdotool getactivewindow getwindowname)
	echo "FOCUSED: $active"
	[ $active != "Postal" ] && echo "Game window unfocused, stopping." && exit 1;

	xdotool key Return; echo "Return"
	xdotool sleep 2

	echo "Walking [DOWN]"; xdotool keydown s
	xdotool sleep 0.5
	xdotool keyup s

	echo "Shooting [Up]"; xdotool keydown Up # Start shooting Up
	for i in {1..3} ; do
		echo "Walking: left"; xdotool keydown a
		xdotool sleep 6
		xdotool keyup a
		xdotool sleep 2
		echo "Walking: right"; xdotool keydown d
		xdotool sleep 7
		xdotool keyup d
		xdotool sleep 2
	done
	xdotool keyup Up # Stop shooting Up

	# Move further up level
	echo "Shooting [LEFT]"; xdotool keydown Left # Start shooting
	echo "Walking [LEFT]"; xdotool keydown a
	xdotool sleep 0.2
	xdotool keyup a
	echo "Walking [UP]"; xdotool keydown w
	xdotool sleep 7
	xdotool keyup w


	echo "Walking [LEFT]"; xdotool keydown a
	xdotool sleep 2
	xdotool keyup Left # Stop shooting Left
	xdotool keydown Right # Start shooting Right
	xdotool sleep 3
	xdotool keyup a
	echo "Walking [DOWN]"; xdotool keydown s
	xdotool sleep 5
	xdotool keyup s
	
	xdotool keyup Right # Stop shooting Right
	xdotool keydown Up # Start shooting Up

	echo "Walking [RIGHT]"; xdotool keydown d
	xdotool sleep 5
	xdotool keyup d

	xdotool keyup Up # Stop shooting Up

	echo "K"; xdotool key k; # Kill self
	xdotool sleep 2          
	xdotool key space        # Rejuvinate
	xdotool sleep 3
	xdotool key space        # Restart level
done
