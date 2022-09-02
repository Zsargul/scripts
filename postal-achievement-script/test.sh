#!/bin/bash

# Get the Postal game window and make sure it's focused 
win=$(xdotool search --name Postal | head -1)
echo $win

keydown="xdotool keydown --clearmodifiers --window $win"
keyup="xdotool keyup --clearmodifiers --window $win"
key="xdotool key --clearmodifiers --window $win"

$keydown Left
xdotool sleep 5
$keyup Left
