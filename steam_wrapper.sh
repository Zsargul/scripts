#!/usr/bin/bash

# Since steam's linux client does not follow the XDG base
# directory specification, it litters the home folder with
# a bunch of hidden files. This is a wrapper that circumvents
# that, albeit in a 'hacky' method at least until valve changes
# this. Make sure to run this always when using steam and never
# the real steam binary, or steam will just reinstall itself
# and fill the home directory with the hidden files as usual.
# You can also add this as a .desktop file in /usr/share/applications
# to run it from rofi or dmenu

HOME=$HOME/games/Steam # Directory where you want steam to actually store data
exec /usr/bin/steam "$@" 
