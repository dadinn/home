
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.profile"
fi

# Path

export PATH="$HOME/bin${PATH:+:}$PATH"

# NVM

if [ -d $HOME/.nvm ]
then
    export NVM_DIR="$HOME/.nvm"
fi

# SSH

start_ssh_agent() {
    if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ]
    then
        eval "$(ssh-agent -s)"
    fi
}

cleanup() {
    if [ -n "$SSH_AUTH_SOCK" ]
    then
        eval "$(ssh-agent -k)"
    fi
}

start_ssh_agent
trap cleanup EXIT
