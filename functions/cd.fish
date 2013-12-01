function cd --description 'Change directory'
    # Skip history in subshells
    if status --is-command-substitution
        builtin cd $argv
        return $status
    end

    set -l arg $argv[1]
    if test -z $arg
        set arg "$HOME"
    end

    switch $arg
    case '--'
        # cd --: Print current dirstack
        dirs -v
        return $status
    case '-'
        # cd -: Go to previous dir
        set arg $dirstack[1]
    case '--*'
        # Nothing, Use $argv[1]
    case -0
        # cd -0: Go to $pwd
        set arg .
    case '-*'
        # cd -$n: Go to nth last dir
        if test $arg -lt 0 -a $arg -ge "-"(count $dirstack)
            set -l n (math "0 - $arg")
            set dst $dirstack[$n]
            if test $status -eq 0
                set arg $dst
            end
        end
    end

    # push this dir onto dirstack and cd to $arg
    pushd $arg
    return $status
end
