# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/breccan/.zshrc'

PROMPT='%~%#%>:%{\e[0m%}%%' # default prompt
RPROMPT='[%n, %L] ' # prompt for right side of screen

REPORTTIME=10
LISTMAX=0

export EDITOR="vim"

autoload -U colors
colors

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt pushdtohome pushdsilent pushd_ignore_dups pushdminus share_history
