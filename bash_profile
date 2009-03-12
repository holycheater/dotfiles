export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;32"

export PS1="\w$ "

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# bash-completion
if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

export EDITOR="$HOME/.bin/vim"

if [ -d ~/.bin ]; then
	export PATH=$HOME/.bin:$PATH
fi

# coreutils from macports
if [ -f /opt/local/bin/gls ]; then
	alias ls="gls --color=auto"
	alias la="ls -la"
fi

if [ -x /opt/local/bin/gdircolors ]; then
	eval `gdircolors .dircolors`
fi

# Enable 256-color for iTerm.app
if [ $TERM_PROGRAM = "iTerm.app" ]; then
	export TERM="xterm-256color"
	export LANG="en_US.UTF-8"
fi
