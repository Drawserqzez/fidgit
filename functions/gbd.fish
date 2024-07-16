function gbd -d "Shortcut to deleting branch(es)"
    set -l branch_name "$argv[1]"
    set -l current_branch (git branch --show-current)

    if not test -z $branch_name
        if test $current_branch = $branch_name
            echo 'You cannot delete the branch you are on: '$branch_name
            return 69
        end

        return (git branch -d $branch_name)
    end

    if not test (git branch --show-current) = 'main'
        echo 'To delete all branches, you must be in main'
        return 69
    end

    set -l branches (string trim (string replace "* main" "" (git branch -l)))

    for b in $branches
        if not test -z $b
            git branch -d $b
        end
    end
end

