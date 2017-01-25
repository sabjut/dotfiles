export PATH=$PATH:~/.local/bin

if [ -n ${SSH_CLIENT} ] || [ -n ${SSH_TTY} ]; then
    export CONNECTION_TYPE=remote
else
    export CONNECTION_TYPE=local
fi

#run bashrc
if [ -n "${BASH_VERSION}" ]; then
    if [ -f "${HOME}/.bashrc" ]; then
        source "${HOME}/.bashrc"
    fi
fi

