
tmux-choose() {
    select elt in "$(tmux ls)"; do
        id=$(cut -d':' -f 1 <<< $elt)
        tmux attach -t $id
    done
}
alias tmc="tmux-choose"
