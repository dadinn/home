
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.bashrc"
    PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\H:\[\e[1;33m\]\w\[\e[m\]\n\[\e[1;31m\]\t\[\e[m\] \[\e[1;35m\][\!:$?]&[\j]\[\e[1;36m\]$\[\e[m\]'
else
    PS1='$ '
fi

# History
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
HISTCONTROL='ignorespace:ignoredups:ereasedups'

# Aliases
alias ll='ls -la --group-directories-first'
alias lt='ll -rt'
alias tailf='tail -f'
alias vgrep='grep -v'
alias pgrep='pgrep -ia'
alias kill9='kill -9'
alias rmrf='rm -rf'
alias dush='du -sh'
alias tmuxs='tmux new-session -s'
alias tmuxa='tmux attach -t'
alias gitlog='git log --graph --all --decorate'
alias gitsuir='git submodule update --init --recursive'
alias termbin='netcat termbin.com 9999'
alias sudo="sudo "
