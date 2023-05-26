function gpu -d "Shortcut for git push that sets origin upstream based on current branch" 
    set -l current_branch (git revparse --abbref-ref HEAD)

    git push -u origin $current_branch
end
