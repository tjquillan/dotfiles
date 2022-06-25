if [[ ! -v SSH_AUTH_SOCK ]];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

if command -v seahorse &> /dev/null; then
    export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass
fi
