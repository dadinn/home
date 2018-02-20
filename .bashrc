echo "sourcing ~/.bashrc ..."

if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# Cygwin only loads .bashrc when starting shell
source .profile



