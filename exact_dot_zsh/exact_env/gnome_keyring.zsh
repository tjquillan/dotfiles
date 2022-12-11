GCR_SSH_AUTH_SOCK="${XDG_RUNTIME_DIR:-/run/user/$UID}"/gcr/ssh
if [[ -z SSH_AUTH_SOCK && -e "${GCR_SSH_AUTH_SOCK}" ]]; then
    export SSH_AUTH_SOCK="${GCR_SSH_AUTH_SOCK}"
elif [[ -z SSH_AUTH_SOCK ]]; then
    eval $(gnome-keyring-daemon --start 2> /dev/null)
    export SSH_AUTH_SOCK
fi

if command -v seahorse &> /dev/null; then
    export SSH_ASKPASS=/usr/lib/seahorse/ssh-askpass
fi
