
# Create user binary directory and add it to path.
mkdir -p $HOME/bin
PATH="$HOME/bin:$PATH"

# Scripts folder
mkdir -p $ZSH_DIR/scripts

# Source every needed files
# External sources
sources=( aliases fundef git tmux )
__import_external_source () {
    [ -f $ZSH_DIR/$1.zsh ] && \
        source $ZSH_DIR/$1.zsh || \
        echo "warning: $ZSH_DIR/$1.zsh does not exists." >&2
}

for s in $sources; do
    __import_external_source "$s"
done
