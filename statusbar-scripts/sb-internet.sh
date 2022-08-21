#/bin/sh

# ❌ Wifi/Eth disabled
# 📡 Wifi/Eth Enabled


case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e nmtui ;;
esac

# Get wired or wireless connection
output=$(nmcli | awk 'NR==1{print}')

# No connection
if [[ $output != *"connected"* ]] ; then
	icon="❌"
	conType="Offline"

	printf "%s\n" "$icon$conType"
	exit
else
	connection=${output#*to }
	icon="📡"

	# Connection is wired
	if [[ $connection == *"Wired"* ]] ; then
		conType="ETH"
		printf "%s\n" "$icon$conType"
	else # Connection is not wired
		if nmcli | awk 'NR==3{print}' | grep -q "wifi" ; then
			conType="Wi-Fi"
		else
			conType="?"
		fi

		printf "%s\n" "$icon$conType: $connection"
	fi
fi
