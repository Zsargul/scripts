#/bin/sh

# ❌ Wifi/Eth disabled
# 📡 Wifi/Eth Enabled


case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e nmtui ;;
esac

# Get wired or wireless connection
output=$(nmcli | awk 'NR==1{print}')

if [[ $output != *"connected"* ]] ; then
	icon="❌"
	conType="N/A"

	printf "%s\n" "$icon$conType"
	exit
else
	connection=${output#*to }
	icon="📡"

	case $connection in
		"Wired"* )
			conType="ETH"
			;;
		*)
			conType=$connection
			;;
	esac

	printf "%s\n" "$icon$conType"
fi
