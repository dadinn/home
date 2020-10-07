
if [ "$TERM" != "dumb" ]
then echo "sourcing $HOME/.bashrc"
fi

if [ -f /etc/bashrc ]
then . /etc/bashrc
fi
