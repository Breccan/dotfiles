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
export ZEBRA_CHANGES_PERMITTED=true

autoload -U colors
colors

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt pushdtohome pushdsilent pushd_ignore_dups pushdminus share_history

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

if [[ -s /home/breccan/.rvm/scripts/rvm ]] ; then source /home/breccan/.rvm/scripts/rvm ; fi
