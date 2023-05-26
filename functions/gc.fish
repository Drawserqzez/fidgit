function gc -d "Shortcut for git commit"
    if test -z $argv
        git commit -m $argv[1]
    else
        git commit
    end
end
