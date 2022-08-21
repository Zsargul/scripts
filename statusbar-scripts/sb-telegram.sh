#/bin/sh

icon="📟"

case $BLOCK_BUTTON in
	# None	
esac

if ! pgrep "telegram" > /dev/null ; then
	exit
else
	# Notification numbers are displayed in Telegram's window title, so we
	# can get them from there
	windowname=$(xdotool search --name Telegram getwindowname)

	# Telegram window has notification suffix
	if [[ $windowname == *"Telegram"* ]] && [[ $windowname == *"("* ]] ; then 
		noti=${windowname#*(}
		noti=${noti%)*}
	
		printf "%s\n" "$icon[$noti]"
	elif [[ $windowname == "Telegram" ]] ; then # If there are no notifications, do nothing
		printf "%s\n" "$icon"
	fi
fi
