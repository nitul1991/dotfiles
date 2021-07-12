

#Colors
reset="\e[0m"
red="\e[0;91m"
green="\e[0;92m"
yellow="\e[0;93m"
cyan="\e[0;96m"

man() {
    env \
    LESS_TERMCAP_mb=$(printf $red) \
    LESS_TERMCAP_md=$(printf $red) \
    LESS_TERMCAP_me=$(printf $reset) \
    LESS_TERMCAP_se=$(printf $reset) \
    LESS_TERMCAP_so=$(printf $yellow) \
    LESS_TERMCAP_ue=$(printf $reset) \
    LESS_TERMCAP_us=$(printf $green) \
    man "$@"
}
