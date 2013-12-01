function pushd --description 'Push directory to stack'
    if count $argv >/dev/null
        switch $argv[1]
        case -h --h --he --hel --help
            __fish_print_help pushd
            return 0
        end
    end

    set -l prev_dir (command pwd)
    builtin cd $argv[1]
    set -l result $status

    if test "$result" -eq 0
        set -l new_dir (command pwd)
        # Update $dirstack with $prev_dir at front and no $new_dir
        set -l newstack $prev_dir
        set -l n 1
        for d in $dirstack
            if test (count $newstack) -ge 20
                break
            end
            if contains $d $newstack
                continue
            else if test $d = $new_dir
                continue
            end
            set newstack $newstack $d
        end
        set -g dirstack $newstack
    end

    return $result
end
