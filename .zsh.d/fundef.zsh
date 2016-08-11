# Ocaml dev
function odast() {
    [ $# -eq 0 ] && echo "odast file.ml ..." >&2 && return 1
    ocamlfind ppx_tools/dumpast "$@"
}

# Update scripts.
function update-script() {
    [ -z "$1" ] && echo "update-script <script-name>" && exit 1
    directory_path="$ZSH_DIR/scripts/$1"
    script="$HOME/bin/$1"
    echo "$1: "
    [ ! -d "$directory_path" ] && \
        git clone git@github.com:Aaylor/$1.git $directory_path || \
        ( cd $directory_path; git pull )
    [ ! -f "$script" ] && ln -s "$directory_path/$1" "$HOME/bin/$1"
    echo
}

function update-self-script() {
    scripts=(tdfx mntfs)
    for script in $scripts; do
        update-script $script
    done
}
