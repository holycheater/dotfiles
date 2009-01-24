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

export EDITOR="/usr/bin/vim"

alias ls="gls --color=auto"
alias la="ls -la"
