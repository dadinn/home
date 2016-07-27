
echo "sourcing ~/.profile ..."

# switch Ctrl with CapsLock
# setxkbmap -layout dvorak -option ctrl:nocaps

# set prompt

export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\H:\[\e[1;33m\]\w\[\e[m\]\n\[\e[1;31m\]\t\[\e[m\] \[\e[1;35m\][\!:$?]&[\j]\[\e[1;36m\]$\[\e[m\]'

# system local apps on path
export PATH=$PATH:/opt/bin
export HISTCONTROL=ingoredups
shopt -s histappend
PROMPTCOMMAND='history -a'

# User specific aliases and functions

alias ll='ls -lA --group-directories-first'
alias rmrf='rm -rf'
alias tmuxs='tmux new-session -s'
alias tmuxa='tmux attach -t'
