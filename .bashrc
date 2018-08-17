
if [ "$TERM" != "dumb" ]
then echo "sourcing ~/.bashrc"
fi

if [ -f /etc/bashrc ]
then . /etc/bashrc
fi

# Cygwin only loads .bashrc when starting shell
. .profile
