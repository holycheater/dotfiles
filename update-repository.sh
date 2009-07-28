#!/bin/sh
# vim:noet:sw=4:ts=4

FILES="gvimrc vimrc bash_profile dircolors zshrc screenrc Xdefaults pbuilderrc vim"

for f in $FILES; do
	fullpath="${HOME}/.${f}"
	echo $fullpath
	if [ -f $fullpath ]; then
		cp $fullpath $f
	elif [ -d $fullpath ]; then
		rm -r $f
		cp -a $fullpath $f
	fi
done
