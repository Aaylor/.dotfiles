
# $1 <- for osx platform
# $2 <- for linux platform
__platform() {
    p="$(uname)"
    [ "$p" = "Darwin" ] && echo "$1" || echo "$2"
}

## Human friendly
alias df='df -h'
alias du='du -h -d 2'


alias ls='ls -ilah'             # ls as list
alias psa="ps aux"              # display all processus
alias psg="ps aux | grep "      # grep on all processus

# Shortcuts
alias j="jobs"
alias c='clear'
alias zar='source $HOME/.zsh.d/aliases.zsh'

# Editor shortcuts
alias vi='/usr/local/bin/vim -p'
alias vim='/usr/local/bin/vim -p'
alias gvim='gvim -p'
alias emacs="$(__platform '/Applications/Emacs.app/Contents/MacOS/Emacs' 'emacs -mm')"

# Git shortcuts
alias gi="$EDITOR .gitignore"
alias gc='git commit'
alias gcl='git clone'
alias gst='git status'
alias gsta='git stash'
alias gstap='git stash pop'
alias gstaa='git stash apply'
alias gsh='git show'
alias gpl='git pull'
alias gplr='git pull rebase'
alias gps='git push'
alias gdi='git diff'
alias gr='git rebase'
alias gresh='git reset --hard'


# Applications
alias love="$(__platform '/Applications/love.app/Contents/MacOs/love' '')"
