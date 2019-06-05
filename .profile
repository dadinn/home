
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.profile"
    export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\H:\[\e[1;33m\]\w\[\e[m\]\n\[\e[1;31m\]\t\[\e[m\] \[\e[1;35m\][\!:$?]&[\j]\[\e[1;36m\]$\[\e[m\]'
else
    export PS1='$ '
fi

# Path

export PATH=$HOME/bin${PATH:+:}$PATH

# History

export HISTCONTROL='ignorespace:ignoredups:ereasedups'
export PROMPT_COMMAND='history -a'
shopt -s histappend

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
alias termbin='netcat termbin.com 9999'

# Thinkpad specific stuff

if synclient &> /dev/null
then
set_touchpad_off () {
    if type synclient > /dev/null
    then
	synclient TouchpadOff=1
    else
	echo "Not supported!"
    fi
}

set_touchpad_on () {
    if type synclient > /dev/null
    then
	synclient TouchpadOff=0
    else
	echo "Not supported!"
    fi
}
fi

# Gnome visual bell stuff

if type gsettings &> /dev/null
then
set_visualbell_on () {
    if type gsettings > /dev/null
    then
	gsettings set org.gnome.desktop.wm.preferences audible-bell false
	gsettings set org.gnome.desktop.wm.preferences visual-bell true

    else
	echo "Not supported!"
    fi
}

set_visualbell_off () {
    if type gsettings > /dev/null
    then
	gsettings set org.gnome.desktop.wm.preferences audible-bell true
	gsettings set org.gnome.desktop.wm.preferences visual-bell false
    else
	echo "Not supported!"
    fi
}
fi
