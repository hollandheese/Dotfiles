#environment

export EDITOR=vim
export WINEARCH=win32
export PATH=$PATH:/home/hollandheese/.local/bin:$(ruby -rubygems -e "puts Gem.user_dir")/bin

#aliases

alias ls='ls --color'
alias tmux="TERM=screen-256color-bce tmux -2"
alias h?="history | grep"

#Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/hollandheese/.local/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
