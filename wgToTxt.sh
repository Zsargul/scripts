#!/bin/bash

# This script simply mass converts .wg (native wordgrinder files)
# to plain text files. I made this because I like to write a lot
# of things in wordgrinder but don't like storing it all in .wg
# format as it is inconvenient for viewing and obviously can only
# be opened using wordgrinder.

WGFILES=$(ls wordgrinder\ format)

for file in $WGFILES
do
	file="${file%.*}"
	if ! [ -f "text format"/"$file".txt ]; then
		
		cd "wordgrinder format" && wordgrinder --convert "$file".wg "$file".txt && mv "$file".txt ../ && cd .. && mv "$file".txt "text format"

		if [ -f "text format"/"$file".txt ]; then
			echo "$file".wg successfully converted to .txt
		else
			echo something went wrong while converting "$file".wg
		fi
	else
		echo "$file".wg has already been converted
	fi
done
