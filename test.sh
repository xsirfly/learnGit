get_git_status () {
    status_message=`git status`
    if [[ $status_message =~ "Changes not staged for commit" ]]; then
        git_status='red'
    elif [[ $status_message =~ "Changes to be committed" ]]; then
        git_status='green'
    elif [[ $status_message =~ "different commits each" ]]; then
        git_status='cyan'
    elif [[ $status_message =~ "have diverged" ]]; then
        git_status='magenta'
    elif [[ $status_message =~ "Your branch is ahead of" ]]; then
        git_status='blue'
    elif [[ $status_message =~ "nothing to commit, working directory clean" ]]; then
        git_status='black'
    else
        git_status='yellow'
    fi
    echo "$git_status"
}
get_git_status
