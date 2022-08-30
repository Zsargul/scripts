# Postal 1 Achievement Script

These are bash scripts for idle-farming 4 achievements in the original Postal game. The achievements are:
- **Bulletstorm**: Fire 1,000,000 bullets
- **Mickey and Mallory**: Make 10,000 killd
- **Peter North would be proud**: Hit 100,000 Targets
- **Holes is holes**: Take 10,000 hits

**NOTE:**
Despite making earning the achievements easier, these scripts **won't speed up** the process of farming these achievements.
It will take a long time for these achievements to pop, so your best best is booting up the game and running these scripts
when you're off running errands or away from your computer. This is because you have to stay in the game window's focus
for xdotool to work, making running this script in the background while you do other stuff on your computer impossible.

## The scripts

### EZ-mart.sh
To use the first script, `EZ-mart.sh`, load up the map "EZ Mart" from the level selection and once Postal dude has spawned
in, simply run the script with `./EZ-mart.sh`. Postal dude will then proceed to run around and shoot in a scripted pattern,
before shooting himself and restarting the level. When postal dude dies, you do not need to start the script again. It will
run indefinitely (until you stop it with Ctrl+z), automatically restarting the level after each 'iteration' of Postal dudes
scripted actions.
