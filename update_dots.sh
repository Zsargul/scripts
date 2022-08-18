#/bin/bash

DOTDIR="$HOME/dotfiles"
E="ERROR:"
W="(!)"

# Paths for dotfiles
# USE TEST FILE FIRST
declare -a DF_PATHS=(
	#"$HOME/.config/Xmodmap"
	#"$HOME/.bashrc"
	#"$HOME/.xinitrc"
	#"$HOME/.config/qutebrowser/config.py"
	#"/etc/X11/xorg.conf"

	"$HOME/.testfile1"
	"$HOME/.testfile2"
	"$HOME/.testfile3"
)

if [[ ! -d $DOTDIR ]] ; then
	echo "$E dotfiles directory not found"
	exit 1
else
	echo "dotfiles directory found at $DOTDIR"
	cd $DOTDIR
	echo "cd'ing into $PWD..."

	for df in "${DF_PATHS[@]}"
	do
		if [[ -f $df ]] ; then
			base_name=${df##*/}
			cp $df "$DOTDIR/$base_name"
			[[ -f $DOTDIR/$base_name ]] && echo "Copied $df to $DOTDIR/$base_name" || (echo "$E Could not copy $df to $DOTDIR/$base_name" && exit 1)
		else
			echo "$W $df doesn't exist. Skipping..."
		fi
	done
fi
