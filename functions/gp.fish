function gp -d "Shortcut for git push" 
    set -l current_branch (git rev-parse --abbrev-ref HEAD)

    if test (git rev-parse --abbrev-ref "$current_branch"@{u})
        git push
    else
        git push -u origin $current_branch
    end
end
