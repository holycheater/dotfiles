if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    export GREP_OPTIONS="--color"
    export GREP_COLOR="1;32"
fi

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/home/holycheater/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoredups

unsetopt beep
bindkey -e

PROMPT="%~%# "
PATH="$HOME/.bin:$PATH"

export DEBFULLNAME="Alexander Saltykov"
export DEBEMAIL="holy.cheater@gmail.com"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case $TERM in
    xterm*|rxvt)
	precmd() {
	    print -Pn "\e]0;%~\a"
	}
	preexec() {
	    print -Pn "\e]0;$1\a"
	}
    ;;
    screen*)
	precmd() {
	    print -Pn "\ek%~\e\\"
	    print -Pn "\e]0;%~\a"
	}
	preexec() {
	    print -Pn "\ek$1\e\\"
	    print -Pn "\e]0;$1\a"
	}
    ;;
esac

TERM="xterm-256color"
export EDITOR="/usr/bin/vim"
