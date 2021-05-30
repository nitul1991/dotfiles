

function up --description "Move up the directory tree"
    set levels $argv[1]
    if test -z $levels
        set levels 1
    end

    set currentDir (pwd)

    while test "$levels" -ne 0;
        set levels (math $levels - 1)
        cd ..
    end

    # This is to handle the behaviour of the `cd -` command
    pushd $currentDir
    cd -
end
