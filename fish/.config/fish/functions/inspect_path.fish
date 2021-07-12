

function inspect_path --description "Enumerate the contents of the \$PATH variable, separated by newlines"
    echo $PATH | tr ' ' '\n' | bat -n
end
