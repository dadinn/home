
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
alias vgrep='grep -v'
alias pgrep='pgrep -ia'
alias kill9='kill -9'
alias rmrf='rm -rf'
alias tmuxs='tmux new-session -s'
alias tmuxa='tmux attach -t'
alias gitlog='git log --graph --all --decorate'

# Gnome & Thinkpad specific

set_touchpad_OFF () {
    if type synclient > /dev/null
    then
	synclient TouchpadOff=1
    else
	echo "Not supported!"
    fi
}

set_touchpad_ON () {
    if type synclient > /dev/null
    then
	synclient TouchpadOff=0
    else
	echo "Not supported!"
    fi
}

set_visualbell_ON () {
    if type gsettings > /dev/null
    then
	gsettings set org.gnome.desktop.wm.preferences audible-bell false
	gsettings set org.gnome.desktop.wm.preferences visual-bell true

    else
	echo "Not supported!"
    fi
}

set_visualbell_OFF () {
    if type gsettings > /dev/null
    then
	gsettings set org.gnome.desktop.wm.preferences audible-bell true
	gsettings set org.gnome.desktop.wm.preferences visual-bell false
    else
	echo "Not supported!"
    fi
}
