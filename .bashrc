
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.bashrc"
    PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\H:\[\e[1;33m\]\w\[\e[m\]\n\[\e[1;31m\]\t\[\e[m\] \[\e[1;35m\][\!:$?]&[\j]\[\e[1;36m\]$\[\e[m\]'
else
    PS1='$ '
fi

# make GLOB patterns match hidden files too, except . and ..
shopt -s dotglob

# make glob patterns expand to empty string if nothing matches
# otherwise if nothing matches, tho glob pattern exands to itself
shopt -s nullglob

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
alias gitclone='git clone --recursive'
alias termbin='netcat termbin.com 9999'
alias sudo="sudo "

# load NVM core functions
if [ -s "$NVM_DIR/nvm.sh" ]
then . "$NVM_DIR/nvm.sh"
fi

# load NVM autocompletion
if [ -s "$NVM_DIR/bash_completion" ]
then . "$NVM_DIR/bash_completion"
fi

# Thinkpad Touchpad specific toggle functions
if type synclient &> /dev/null
then
    swap_touchpad () {
        status="$(synclient | grep TouchpadOff | cut -d= -f2 | xargs)"
        if [ "$status" = 1 ]
        then
            synclient TouchpadOff=0
            echo "Turned touchpad on!"
        elif [ "$status" = 0 ]
        then
            synclient TouchpadOff=1
            echo "Turned touchpad off!"
        else
            echo "Unrecognised touchpad status: $status!"
        fi
    }
fi

# Gnome specific visual bell toggle functions
if type gsettings &> /dev/null
then
    swap_visualbell () {
        status="$(gsettings get org.gnome.desktop.wm.preferences visual-bell | xargs | tr '[:upper:]' '[:lower:]')"
        if [ "$status" = "true" ]
        then
            gsettings set org.gnome.desktop.wm.preferences audible-bell true
            gsettings set org.gnome.desktop.wm.preferences visual-bell false
            echo "Turned visualbell off, audiobell on!"
        elif [ "$status" = "false" ]
        then
            gsettings set org.gnome.desktop.wm.preferences audible-bell false
            gsettings set org.gnome.desktop.wm.preferences visual-bell true
            echo "Turned visualbell on, audiobell off!"
        else
            echo "Unrecognised visualbell status: $status!"
        fi
    }
fi

if type apt &> /dev/null
then
    apt_history_logs () {
        ls -rv /var/log/apt/history.log.*.gz | xargs cat | gunzip -c
        cat /var/log/apt/history.log
    }

    apt_history () {
        apt_history_logs | sed -E 's;([^:]+): ;\1=;' | awk -F '=' '
function printdata() {
  gsub("  "," ",data["Start-Date"]);
  gsub(" (.*)",":",data["Requested-By"]);
  gsub("(apt|apt-get) ","",data["Commandline"]);
  print data["Start-Date"] " " data["Requested-By"] " " data["Commandline"]
}
{ data[$1] = $2 }
NF == 0 { printdata(); delete data }
END { printdata() }
' | grep '\(install\|remove\|purge\|dist-upgrade\)' | tac
    }
fi

# git helper function to sync, init, and update submodules
if type git &> /dev/null
then
    gitsuir () {
        git submodule sync && git submodule update --init --recursive
    }
fi

# netcat helper function to test listening on ports
if type nc &> /dev/null
then
    nctest () {
        if [ ! $# -eq 2 ]
        then
            echo USAGE: nctest HOST PORT
        else
            local HOST="$1"
            local PORT="$2"
            echo TEST | nc -N $HOST $PORT && echo OK || echo FAILED
        fi
    }
fi
