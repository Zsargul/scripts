#/bin/bash

# This script enumerates fcitx5 keyboard layouts. Documented names for the layouts
# (ex. "keyboard-pl") must be included in the inputMethods array and can be found
# in ~/.config/fcitx5/config

inputMethods=("keyboard-pl" "keyboard-ru" "mozc")
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
