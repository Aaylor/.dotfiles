
# Function to reset n commit from HEAD.
function git-rewind() {
    [ -z "$1" ] && echo "git-rewind n" >&2 && return 1
    [[ $1 =~ ^[0-9]+$ ]] && echo "parameter must be an integer" >&2 && return 1
    git reset HEAD~"$1"
}
alias grewind="git-rewind"

function git-ignore() {
    base_link="http://gitignore.io/api/"
    [ "$1" = "list" ] && redirect="" || redirect="-o.gitignore"
    curl -L -s $redirect "http://gitignore.io/api/$1"
}
alias ggi="git-ignore"

# Ocaml dev
function odast() {
    [ $# -eq 0 ] && echo "odast file.ml ..." >&2 && return 1
    ocamlfind ppx_tools/dumpast "$@"
}
