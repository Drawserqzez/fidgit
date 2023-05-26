function gc -d "Shortcut for git commit"
    set -l commit_message $argv[1]

    if test ! -z $commit_message
        git commit -m $commit_message
    else
        git commit
    end
end
