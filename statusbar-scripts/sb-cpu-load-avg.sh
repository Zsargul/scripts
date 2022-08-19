#/bin/sh

# Click action
case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e htop ;;	
esac

# AMD CPU's use Tctl/Tdie to display temperature rather than per-core temp like Intel
temp=$(sensors | sed -rn 's/.*Tctl:\s+.([0-9.]+).*/\1/p')

# Use /proc/stat to calculate CPU usage
cpuLoad=$(cat /proc/stat | grep 'cpu ' | awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}' | awk '{printf("%2.2f\n", 100-$1)}')

echo "🖥${cpuLoad}% 🌡${temp}°C"
