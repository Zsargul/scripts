#!/bin/bash

# To use, load into the "EZ Mart" level from the
# level selection, minimize the game, and then
# just run this script.

# Get the Postal game window and make sure it's focused 
window=$(xdotool search --name Postal)
args="--clearmodifiers --window $window"

while true ; do
	for i in {1..10} ; do
		xdotool key $args Return; echo "Starting run $i"
		xdotool sleep 1

		xdotool keydown $args s
		xdotool sleep 0.5
		xdotool keyup $args s

		xdotool keydown $args Up # Start shooting Up
		for i in {1..3} ; do
			xdotool keydown $args a
			xdotool sleep 6
			xdotool keyup $args a
			xdotool sleep 2
			xdotool keydown $args d
			xdotool sleep 7
			xdotool keyup $args d
			xdotool sleep 2
		done
		xdotool keyup $args Up # Stop shooting Up

		# Move further up level (This is where you start getting
		# shot at more so the "Holes is holes" achievement comes
		# into play)
		xdotool keydown $args Left # Start shooting
		xdotool keydown $args a
		xdotool sleep 0.2
		xdotool keyup $args a
		xdotool keydown $args w
		xdotool sleep 2
		xdotool keydown $args a
		xdotool sleep 1.5
		xdotool keyup $args a
		xdotool sleep 5
		xdotool keyup $args w

		xdotool keydown $args a
		xdotool sleep 2
		xdotool keyup $args Left # Stop shooting Left
		xdotool keydown $args Right # Start shooting Right
		xdotool sleep 2
		xdotool keyup $args a
		
		xdotool keyup $args Right # Stop shooting Right
		
		# This is where Postal dudes fate becomes a bit unpredictable
		# as he is met with an onslaught of grenades and missiles. If
		# he dies during this point, the script may stall for a short time
		# as it carries out the remaining instructions with the assumption
		# that Postal dude is alive, before restarting as usual
		for i in {1..3} ; do
			xdotool keydown $args Left # Start shooting Up
			xdotool keydown $args d
			xdotool sleep 6
			xdotool keyup $args d
			xdotool keyup $args Left # Stop shooting Up

			xdotool keydown $args Down # Start shooting down
			xdotool keydown $args a
			xdotool sleep 6
			xdotool keyup $args a
			xdotool keyup $args Down # Stop shooting down
		done

		xdotool key $args k; # Kill self
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
