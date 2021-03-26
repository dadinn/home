
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
