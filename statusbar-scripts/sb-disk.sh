#/bin/sh

# Click action
case $BLOCK_BUTTON in
	# None
esac

declare -a DIRS=("/" "$HOME") # "$HOME/av" "$HOME/games" 

# Get index of last element
pos=$(( ${#DIRS[*]} - 1 ))
last=${DIRS[$pos]}

for location in "${DIRS[@]}"
do
	[ -d "$location" ] || continue

	case "$location" in
		"/") icon="🌲" ;;
		"$HOME") icon="🏠" ;;
		# "$HOME/av") icon="🎥" ;;
		# "$HOME/games") icon="🕹" ;;
	esac

	printf "%s:%s" "$icon" "$(df -h "$location" | awk ' /[0-9]/ {print $5}')"

	# Don't print space after last directory
	if [[ $location == $last ]] ; then
		break
	else
		printf " "
	fi
done
printf "\n"

