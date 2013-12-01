function dirs --description 'Print directory stack'
    if test $argv[1] = "-v" ^/dev/null
        set -l n 0
        for i in (command pwd) $dirstack
            printf "%2d  %s\n" $n (echo $i | sed -e "s|^$HOME|~|")
            set n (math $n+1)
        end
        return
    end
    echo -n (command pwd)"  "
    for i in $dirstack
        echo -n $i"  "
    end
    echo
end
