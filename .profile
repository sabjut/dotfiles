export PATH=$PATH:~/.local/bin

if [ -n "${SSH_CLIENT}" ] || [ -n "${SSH_TTY}" ] ; then
    CONNECTION_TYPE="remote"
else
    CONNECTION_TYPE="local"
fi
export CONNECTION_TYPE

#run bashrc
if [ -n "${BASH_VERSION}" ]; then
    if [ -f "${HOME}/.bashrc" ]; then
        source "${HOME}/.bashrc"
    fi
fi

