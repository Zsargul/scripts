#/bin/sh

icon="📡"

case $BLOCK_BUTTON in
	# None	
esac

if ! pgrep "telegram" > /dev/null ; then
	exit
else
	# Notification numbers are displayed in Telegram's window title, so we
	# can get them from there
	windowname=$(xdotool search --name Telegram getwindowname)

	# Get number of notifs
	if [[ $windowname != "Telegram" ]] ; then
		noti=${windowname#*(}
		noti=${noti%)*}
	
		printf "%s\n" "$icon[$noti]"
	else # If there are no notifications, do nothing
		printf "%s\n" "$icon"
	fi
fi
