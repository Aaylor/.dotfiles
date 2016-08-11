# Function to reset n commit from HEAD.
function git-rewind() {
    [ -z "$1" ] && echo "git-rewind n" >&2 && return 1
    [[ ! $1 =~ ^[0-9]+$ ]] && echo "parameter must be an int" >&2 && return 1
    git reset HEAD~"$1"
}
alias grw="git-rewind"

# Gitignore generation based on keywords.
function git-ignore() {
    base_link="http://gitignore.io/api/"
    [ "$1" = "list" ] && redirect="" || redirect="-o.gitignore"
    curl -L -s $redirect "http://gitignore.io/api/$1"
}
alias ggi="git-ignore"
