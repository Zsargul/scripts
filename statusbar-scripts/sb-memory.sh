#/bin/sh

case $BUTTON in
	1) setsid -f "$TERMINAL" -e htop ;;
esac

free --mebi | sed -n '2{p;q}' | awk '{printf ("🧠%2.2f/%2.2f [GiB]\n", ($3 / 1024), ($2 / 1024))}'
