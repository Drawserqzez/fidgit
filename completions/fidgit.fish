# complete -c ga -w 'git add'
source /usr/share/fish/completions/git.fish 
complete -c ga -a '(__fish_git_files modified untracked deleted unmerged modified-staged-deleted)'
complete -c gb -a '(__fish_git_needs_command checkout)'
complete -c gc -a '(__fish_git_needs_command commit)'
complete -c gr -a '(__fish_git_needs_command restore)'
complete -c grs -a '(__fish_git_needs_command restore --staged)'
