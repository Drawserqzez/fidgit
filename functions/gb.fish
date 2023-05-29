function gb -d "Shortcut for switching between git branches"
    set -l branch_name "$argv[1]"
    
    if test -z $branch_name 
        git switch main
        return 0
    end

    set -l branches (git branch -l)

    if string match -q "*$branch_name" $branches
        git switch $branch_name
    else
        git checkout -b $branch_name
    end
end
