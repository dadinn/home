
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
alias ll='ls -lav --group-directories-first --time-style=long-iso'
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
alias sudo="sudo "

# Thinkpad Touchpad specific toggle functions
if type synclient &> /dev/null
then
    set_touchpad_off () {
	synclient TouchpadOff=1
    }

    set_touchpad_on () {
	synclient TouchpadOff=0
    }
fi

# Gnome specific visual bell toggle functions
if type gsettings &> /dev/null
then
    set_visualbell_on () {
	gsettings set org.gnome.desktop.wm.preferences audible-bell false
	gsettings set org.gnome.desktop.wm.preferences visual-bell true
    }

    set_visualbell_off () {
	gsettings set org.gnome.desktop.wm.preferences audible-bell true
	gsettings set org.gnome.desktop.wm.preferences visual-bell false
    }
fi

# git helper function to sync, init, and update submodules
if type git &> /dev/null
then
    gitsuir () {
	git submodule sync && git submodule update --init --recursive
    }
fi
