

function mkcd --description "Create a directory and cd into it"
    mkdir -p $argv && cd $argv
end
