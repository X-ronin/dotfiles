### Auto start ###
pokemon-colorscripts -r

### Exports and variables ###
export EDITOR="nvim"
export TERMINAL="st"
export MANPAGER="less"
export PAGER="less"
export LESSHISTFILE="-"

## Colors in less ##
## By github.com/brunomontezano ##
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

### Options ###
set -o vi

### Archive extraction function ###
## Usage: ex <file> ##
## By github.com/brunomontezano ##
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### Aliases ###
alias ls="exa --icons --color=always --group-directories-first" # Normal listing
alias la="exa -la --icons --color=always --group-directories-first" # All files and dirs (long format)
alias ll="exa -l --icons --color=always --group-directories-first" # Long format
alias lt="exa -aT --icons --color=always --group-directories-first" # Tree listing

alias bat="bat --color=always --style=auto --theme=Dracula"
alias grep="grep --color=always"
alias fgrep="fgrep --color=always"
alias egrep="egrep --color=always"

alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
