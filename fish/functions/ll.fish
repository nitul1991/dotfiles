

function ll $argv
    exa \
    --long \
    --colour=auto \
    --all \
    --group-directories-first \
    --sort name \
    --group \
    --time modified \
    --no-filesize \
    $argv
end
