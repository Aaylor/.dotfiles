# Ocaml dev
function odast() {
    [ $# -eq 0 ] && echo "odast file.ml ..." >&2 && return 1
    ocamlfind ppx_tools/dumpast "$@"
}

# Update scripts.
function update_script() {
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

function update_self_script() {
    scripts=(tdfx mntfs)
    for script in $scripts; do
        update-script $script
    done
}



# Spacemacs utility

function update_spacemacs() {
    cd ~/.emacs.d/
    git stash                   # Stash every changes
    git checkout master
    git pull
    git checkout local
    git stash pop
    git rebase master
    git submodule foreach git pull
}
