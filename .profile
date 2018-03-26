
echo "sourcing ~/.profile ..."

# Prompt

export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\H:\[\e[1;33m\]\w\[\e[m\]\n\[\e[1;31m\]\t\[\e[m\] \[\e[1;35m\][\!:$?]&[\j]\[\e[1;36m\]$\[\e[m\]'

# Path

export PATH=$HOME/bin${PATH:+:}$PATH

# History

export HISTCONTROL='ignorespace:ignoredups:ereasedups'
export PROMPT_COMMAND='history -a'
shopt -s histappend

# Aliases

alias ll='ls -la --group-directories-first'
alias lrt='ll -rt'
alias tailf='tail -f'
alias rmrf='rm -rf'
alias tmuxs='tmux new-session -s'
alias tmuxa='tmux attach -t'
alias gitlog='git log --graph --all --decorate'
