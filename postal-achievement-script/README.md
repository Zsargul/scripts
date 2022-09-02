# Postal 1 Achievement Script

These are bash scripts for idle-farming 4 achievements in the original Postal game. The achievements are:
- **Bulletstorm**: Fire 1,000,000 bullets
- **Mickey and Mallory**: Make 10,000 kills
- **Peter North would be proud**: Hit 100,000 Targets
- **Holes is holes**: Take 10,000 hits

**For windows users:** Use the AutoHotKey scripts from [this guide by samoisamoi12](https://steamcommunity.com/linkfilter/?url=https://www.dropbox.com/sh/uldx092tbpyi839/AADPPvZMvIoDOsKmB6zsKpbOa?dl=0), upon which this
script is based. Since my script is written in bash, it is obviously intended for use on Linux/Mac.

**About:**
Despite making earning the achievements easier, theses scripts **won't speed up** the process of farming these achievements. 
All the achievements except **Bulletstorm** will take around 5-6 hours to pop using `EZ-mart.sh`. Bulletstorm takes by far
the longest and will take significantly more time to unlock, even if using `bulletstorm.sh`. To unlock bulletstorm quicker
you can follow [this guide](https://steamcommunity.com/sharedfiles/filedetails/?id=2847311922&searchtext=bulletstorm), however keep in mind this method is
**manual** and unlike with my scripts, you will be required to actually play the game instead of AFK farming.

Another thing to note is that you should minimize the game (or move to another workspace for tiling WMs) before running these scripts, as they can temporarily stall/bug out
if the game's window goes into focus. The mouse will also tend to jump around the screen every 10 seconds or so while the script is running, but this is only
a minor annoyance. If you don't want to deal with this, you can obviously just run these scripts while you are away from your computer doing something else.

**IMPORTANT**: Both scripts automatically save the game for you, overwriting whatever previous save was in the said slot (default save slot is 7). 
This is to avoid loss of progress incase the game crashes and you're not there to see. If you want the scripts to save to different save slots
just change the `saveSlot` variable in each of the scripts.

## The scripts

### EZ-mart.sh
This script is for farming **Mickey and Mallory**, **Peter North would be proud**, and **Holes is holes**. Use `bulletstorm.sh` for
**Bulletstorm**.

To use the script, `EZ-mart.sh`, load up the map "EZ Mart" from the level selection and once Postal dude has spawned
in, minimize the game (don't have to minimize if you're going to be away from your computer anyway) and simply run the script with `./EZ-mart.sh` 
from another window/terminal. Postal dude will then proceed to run around and shoot in a scripted pattern, before shooting himself and restarting the level.
When postal dude dies (by his own hands or an NPCs), you do not need to start the script again. It will run indefinitely (until you stop it with Ctrl+z),
automatically restarting the level after each 'iteration' of Postal dude's scripted actions.

### bulletstorm.sh
This script is solely for farming **bulletstorm**. To use it properly, do as follows:

1. Start a **Gauntlet** game from the challanges section
2. Play until you reach thei 4th level, "Have a blast"
3. Save the game into one of your slots as soon as you load in (to save yourself having to play the first 3 levels again)
4. Minimize the game (again, unnecessary if you're planning on being AFK)
5. Run `bulletstorm.sh` from another terminal/window
6. Incase the level's timer runs out and it completes (unlikely), simply go back to your save

Postal dude will then spam the automatic shotgun until it runs dry before shooting himself and restarting the level. The automatic
shotgun is **crucial** for this as a single shot from it counts as 6/7 bullets for the achievement, making it a lot quicker than
any other weapon.
