umask 027
set -o vi

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

################################################################################
# FUNCTIONS
################################################################################
function gitBranch(){
    git branch 2>/dev/null | grep \* | sed 's/\* / /'
}

################################################################################
# ENVIRONMENT VARIABLES
################################################################################
export GIT_EDITOR=vim

# PS1 formatting help
# escape sequence: "\[\e[Xm\]{text to format}"
#   X is the format number
# format 
# 0:  normal
# 1:  bold
# 39: default foreground
# 30: black
# 31: red
# 32: green
# 33: yellow
# 34: blue
# 35: magenta
# 36: cyan
# 37: light gray
# 90: dark gray
# 91: light red
# 92: light green
# 93: light yellow
# 94: light blue
# 95: light magenta
# 96: light cyan
# 97: white
export PS1="\[\e[1m\]\[\e[96m\]\u@\h:\W\[\e[0m\]\[\e[92m\]\$(gitBranch)\[\e[0m\]:"
