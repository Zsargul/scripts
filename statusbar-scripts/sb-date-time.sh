#/bin/sh

# Click action
case $BLOCK_BUTTON in
	# 1) Open calendar
	2) "$TERMINAL" -e "$EDITOR" "$0" ;; 
esac

calendarIcon="🗓"
hour=$(date '+%I')

# Set time icon
case $hour in
	"00") hourIcon="🕛" ;;
	"01") hourIcon="🕐" ;;
	"02") hourIcon="🕑" ;;
	"03") hourIcon="🕒" ;;
	"04") hourIcon="🕓" ;;
	"05") hourIcon="🕔" ;;
	"06") hourIcon="🕕" ;;
	"07") hourIcon="🕖" ;;
	"08") hourIcon="🕗" ;;
	"09") hourIcon="🕘" ;;
	"10") hourIcon="🕙" ;;
	"11") hourIcon="🕚" ;;
	"12") hourIcon="🕛" ;;
esac

# Set suffix
case 'date +%d' in
	"1"|"21"|"31") suffix="st" ;;
	"2"|"22") suffix="nd" ;;
	"3"|"23") suffix="rd" ;;
	*) suffix="th" ;;
esac

date "+$calendarIcon%A, %d$suffix of %B $hourIcon[%I:%M %p]"
