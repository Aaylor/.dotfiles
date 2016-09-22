
## TMUX

tmux_choose() {
    IFS=$'\n' elements=( $( <<< $(tmux ls) ) )
    select elt in $elements; do
        id=$(cut -d':' -f 1 <<< $elt)
        tmux attach -t $id
    done
}
