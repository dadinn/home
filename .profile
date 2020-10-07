
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.profile"
fi

# Path

export PATH="$HOME/bin${PATH:+:}$PATH"
