#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls="ls --color=auto"
alias grep="grep --color=auto"


PS1="\[\e[1;37m\]<\[\e[1;32m\]\u\[\e[1;37m\]@\h> \w \$\[\e[0;0m\] "
