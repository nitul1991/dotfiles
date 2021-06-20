

function ll $argv
    # Check if exa exists on the system
    if command -q exa
        exa \
        --long \
        --colour=auto \
        --all \
        --group-directories-first \
        --sort name \
        --group \
        --time modified \
        --no-filesize \
        --time-style long-iso \
        $argv
    else
        ls -la
    end
end
