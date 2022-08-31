# Postal 1 Achievement Script

This is a bash script for idle-farming 4 achievements in the original Postal game. The achievements are:
- **Bulletstorm**: Fire 1,000,000 bullets
- **Mickey and Mallory**: Make 10,000 kills
- **Peter North would be proud**: Hit 100,000 Targets
- **Holes is holes**: Take 10,000 hits

**For windows users:** Use the AutoHotKey scripts from [this guide by samoisamoi12](https://steamcommunity.com/linkfilter/?url=https://www.dropbox.com/sh/uldx092tbpyi839/AADPPvZMvIoDOsKmB6zsKpbOa?dl=0), upon which this
script is based. Since my script is written in bash, it is obviously intended for use on Linux/Mac.

**NOTE:**
Despite making earning the achievements easier, this script **won't speed up** the process of farming these achievements.
It will take some time (around 5-6 hours) for these achievements to pop using this script, so your best best is launching up
the game and running these scripts when you're off running errands or away from your computer. This is because you have to
stay in the game window's focus for xdotool to work, making running this script in the background while you do other stuff
on your computer impossible. Also, the time it takes to unlock the achievements will obviously vary depending on how far
you have progressed in them already before using this.

## The script
To use the script, `EZ-mart.sh`, load up the map "EZ Mart" from the level selection and once Postal dude has spawned
in, simply run the script with `./EZ-mart.sh` from another window/terminal. The script will focus your game window and
Postal dude will then proceed to run around and shoot in a scripted pattern, before shooting himself and restarting the level.
When postal dude dies, you do not need to start the script again. It will run indefinitely (until you stop it with Ctrl+z),
automatically restarting the level after each 'iteration' of Postal dude's scripted actions.

**Another Note:** Although some achievements earn faster than others, 5-6 hours total of running the script should be enough to
unlock all 4. **Bulletstorm** is the one that takes the longest to unlock by far. 
