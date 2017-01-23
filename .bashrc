#
# ~/.bashrc
#

# If not running interactively, don't do anything

alias ls="ls --color=auto"
alias grep="grep -i --color=auto"

#----- COLOR TABLE DEFINITION -----
COLOR_BLACK="\033[0;30m"
COLOR_RED="\033[0;31m"
COLOR_GREEN="\033[0;32m"
COLOR_YELLOW="\033[0;33m"
COLOR_BLUE="\033[0;34m"
COLOR_PURPLE="\033[0;35m"
COLOR_CYAN="\033[0;36m"
COLOR_GRAY="\033[0;37m"
COLOR_DARKGRAY="\033[1;30m"
COLOR_LIGHTRED="\033[1;31m"
COLOR_LIGHTGREEN="\033[1;32m"
COLOR_LIGHTYELLOW="\033[1;33m"
COLOR_LIGHTBLUE="\033[1;34m"
COLOR_LIGHTPURPLE="\033[1;35m"
COLOR_LIGHTCYAN="\033[1;36m"
COLOR_WHITE="\033[1;37m"
COLOR_NONE="\033[0m"
#----------------------------------


#----- SETTING TERMINAL COLOR PURPOSE -----
COLOR_BASE=$COLOR_WHITE
COLOR_PATH=$COLOR_WHITE

if [ "$CONNECTION_TYPE" == "remote" ]; then
    COLOR_HOST=$COLOR_CYAN
else
    COLOR_HOST=$COLOR_BASE
fi

if [ $(id -u) = "0" ]; then
    COLOR_USER=$COLOR_LIGHTRED
else
    COLOR_USER=$COLOR_LIGHTGREEN
fi
#------------------------------------------


#----- SETTING THE PS1 -----
PS1="\
\[${COLOR_BASE}\]<\
\[${COLOR_USER}\]\u\
\[${COLOR_BASE}\]@\
\[${COLOR_HOST}\]\h\
\[${COLOR_BASE}\]> \
\[${COLOR_PATH}\]\w \
\[${COLOR_BASE}\]\$\
\[\033[0;0m\] "
#---------------------------

