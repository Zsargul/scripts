#/bin/sh

icon="🗓"

case 'date +%d' in
	"1"|"21"|"31") suffix="st" ;;
	"2"|"22") suffix="nd" ;;
	"3"|"23") suffix="rd" ;;
	*) suffix="th" ;;
esac

date "+$icon%A, %d$suffix of %B"
