
if [ "$TERM" != "dumb" ]
then
    echo "sourcing $HOME/.bash_profile"
fi

if [ -f $HOME/.profile ]
then . $HOME/.profile
fi

if [ -f $HOME/.bashrc ]
then . $HOME/.bashrc
fi
