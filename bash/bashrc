

source $HOME/.bash_aliases

# Modular bash scripts

# Iterating over the bashrc script files in the
# $HOME/.bashrc_scripts directory
for script in $HOME/.bashrc_scripts/*.sh
do
# check if the script is executable
#if [ -x "${script}" ]; then
    # source the script
    echo "Sourcing => [${script}]"
    source ${script}
#fi
done

export LC_ALL=en_US.UTF-8
