# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/holycheater/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export HISTCONTROL=ignoredups
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
	export GREP_OPTIONS="--color"
	export GREP_COLOR="1;32"
fi

export TERM="xterm-256color"
export PS1="%~%# "
export PATH="$HOME/.bin:$PATH"

export DEBFULLNAME="Alexander Saltykov"
export DEBEMAIL="holy.cheater@gmail.com"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
