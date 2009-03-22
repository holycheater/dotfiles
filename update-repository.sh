#!/bin/sh

FILES="gvimrc vimrc bash_profile dircolors zshrc"

for f in $FILES; do
	fullpath="${HOME}/.${f}"
	echo $fullpath
	if [ -f $fullpath ]; then
		cp $fullpath $f
	fi
done
