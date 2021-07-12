

# List files in reverse order of modification time
function ltr $argv
    exa \
    --long \
    --colour=auto \
    --all \
    --sort modified \
    --group \
    --time modified \
    --no-filesize \
    --time-style long-iso \
    $argv
end
