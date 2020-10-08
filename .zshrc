
if [ $TERM != "dumb" ]
then
    echo "sourcing $HOME/.zshrc"
    export PS1='%B%F{cyan}%n%f@%F{green}%M:%F{yellow}%~%f
%F{red}%* %F{magenta}[%h:%?]&[%j]%F{cyan}%#%f%b'
else
    export PS1='%# '
fi

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
