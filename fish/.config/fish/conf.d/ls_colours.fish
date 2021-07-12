

set ls_black 'a'
set ls_bold_red 'B'
set ls_green 'c'
set ls_brown 'd'
set ls_bold_blue 'E'
set ls_magenta 'f'
set ls_cyan 'g'
set ls_grey 'h'
set ls_default 'x'

set ls_directory $ls_bold_blue $ls_default
set ls_symlink $ls_cyan $ls_default
set ls_socket $ls_default $ls_default
set ls_pipe $ls_default $ls_default
set ls_executable $ls_bold_red $ls_default
set ls_block_special $ls_default $ls_default
set ls_char_special $ls_default $ls_default
set ls_exec_with_suid $ls_default $ls_default
set ls_exec_with_sgid $ls_default $ls_default
set dir_writable_by_others_with_sticky_bit $ls_default $ls_default
set dir_writable_by_others_without_sticky_bit $ls_default $ls_default

set lscolors $ls_directory $ls_symlink $ls_socket $ls_pipe $ls_executable $ls_block_special $ls_char_special $ls_exec_with_suid $ls_exec_with_sgid $dir_writable_by_others_with_sticky_bit $dir_writable_by_others_without_sticky_bit

set --export LSCOLORS (string join '' $lscolors)
set --export CLICOLOR 1
