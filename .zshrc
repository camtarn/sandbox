HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=8000
bindkey -e
autoload -Uz compinit colors
colors
compinit
export EDITOR=vim
export PROMPT='%~ %# '
alias ls='ls --color=auto'

