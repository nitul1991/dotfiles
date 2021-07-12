

# Increase the number of characters per path part in the working directory
# displayed as part of the prompt
set fish_prompt_pwd_dir_length 10

set fish_color_user brred
set fish_color_host brred
set fish_color_cwd  brcyan

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -gx TERM screen-256color-bce

starship init fish | source
