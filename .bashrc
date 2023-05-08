
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
