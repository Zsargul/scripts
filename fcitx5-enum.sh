#/bin/bash

# This script enumerates fcitx5 keyboard layouts. Documented names for the layouts
# (ex. "keyboard-pl") must be included in the inputMethods array and can be found
# in ~/.config/fcitx5/config. If the array (and order) doesn't match the layouts
# listed in fcitx5's config, the script won't work.

# Note: Fcitx5 overrides custom Xmodmap settings. To turn this off, go into
# fcitx5-config -> addons -> XCB -> uncheck "Allow Overrriding System XKB Settings"

inputMethods=("keyboard-gb" "keyboard-pl" "mozc" "keyboard-ru")
currentIM=$(fcitx5-remote -n)
index=-1

for i in "${!inputMethods[@]}" ; do
    if [[ "${inputMethods[$i]}" = "${currentIM}" ]] ; then
        index=$i
        break
    fi
done

cmd="fcitx5-remote -s "
if [[ $index == $(( ${#inputMethods[@]}-1)) ]] ; then
	cmd+=${inputMethods[0]}
else
	cmd+=${inputMethods[$index+1]}
fi

$cmd
