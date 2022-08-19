#/bin/sh

calendarIcon="🗓"

hour=$(date '+%I')

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

case 'date +%d' in
	"1"|"21"|"31") suffix="st" ;;
	"2"|"22") suffix="nd" ;;
	"3"|"23") suffix="rd" ;;
	*) suffix="th" ;;
esac

date "+$calendarIcon%A, %d$suffix of %B $hourIcon[%I:%M %p]"
