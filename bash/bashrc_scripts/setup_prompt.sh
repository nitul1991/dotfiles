

# Prompt settings

# Escaping non-printable characters
# https://unix.stackexchange.com/questions/28827/why-is-my-bash-prompt-getting-bugged-when-i-browse-the-history
esc_b='\['
esc_e='\]'

escaped_reset="$esc_b$reset$esc_e"
escaped_red="$esc_b$red$esc_e"
escaped_green="$esc_b$green$esc_e"
escaped_yellow="$esc_b$yellow$esc_e"
escaped_cyan="$esc_b$cyan$esc_e"

user_name="\u"
host_name="\H"
current_working_dir="\w"
shell="\s"
terminal_device="\l"
prompt="\$"
newline="\n"

ps1="$escaped_red"
ps1+="$user_name@$host_name "
ps1+="$escaped_yellow"
ps1+="[$terminal_device][$shell]: "
ps1+="$escaped_cyan"
ps1+="$current_working_dir$newline"
ps1+="$escaped_reset"
ps1+="$prompt "

export PS1="$ps1"
