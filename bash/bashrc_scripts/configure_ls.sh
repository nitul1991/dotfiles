

uname_output="$(uname -s)"
case "${uname_output}" in
    Linux*)  machine=Linux;;
    Darwin*) machine=Mac;;
    CYGWIN*) machine=Cygwin;;
    MINGW*)  machine=MinGw;;
    *)       machine="UNKNOWN:${uname_output}"
esac


if [ $machine == "Mac" ]; then
    ls_black='a'
    ls_bold_red='B'
    ls_green='c'
    ls_brown='d'
    ls_bold_blue='E'
    ls_magenta='f'
    ls_cyan='g'
    ls_grey='h'
    ls_default='x'

    ls_directory="$ls_bold_blue$ls_default"
    ls_symlink="$ls_cyan$ls_default"
    ls_socket="$ls_default$ls_default"
    ls_pipe="$ls_default$ls_default"
    ls_executable="$ls_bold_red$ls_default"
    ls_block_special="$ls_default$ls_default"
    ls_char_special="$ls_default$ls_default"
    ls_exec_with_suid="$ls_default$ls_default"
    ls_exec_with_sgid="$ls_default$ls_default"
    dir_writable_by_others_with_sticky_bit="$ls_default$ls_default"
    dir_writable_by_others_without_sticky_bit="$ls_default$ls_default"

    lscolors="$ls_directory"
    lscolors+="$ls_symlink"
    lscolors+="$ls_socket"
    lscolors+="$ls_pipe"
    lscolors+="$ls_executable"
    lscolors+="$ls_block_special"
    lscolors+="$ls_char_special"
    lscolors+="$ls_exec_with_suid"
    lscolors+="$ls_exec_with_sgid"
    lscolors+="$dir_writable_by_others_with_sticky_bit"
    lscolors+="$dir_writable_by_others_without_sticky_bit"

    export LSCOLORS="$lscolors"
    export CLICOLOR=1
fi
