
# Function to reset n commit from HEAD.
function git-rewind() {
    [ -z "$1" ] && echo "git-rewind n" && return 1
    [ "$1" ~= $"^\d+$" ] && echo "ok" || echo "ko"
    # TODO: check if numerical
    git reset HEAD~"$1"
}
alias grewind="git-rewind"
