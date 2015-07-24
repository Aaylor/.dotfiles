
## Human friendly
alias df='df -h'
alias du='du -h -d 2'


alias ls='ls -ilah --color=auto'             # ls as list
alias psa="ps aux"                           # display all processus
alias psg="ps aux | grep "                   # grep on all processus

# Shortcuts
alias j="jobs"
alias c='clear'
alias zar='source $HOME/.zsh.d/aliases.zsh'

# Editor shortcuts
test `uname` = "Darwin" && \
     alias vim='/usr/local/bin/vim -p' ||
     alias vim='vim -p'

alias vi='vim'
alias gvim='gvim -p'

test `uname` = "Darwin" && \
     alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs' || \
     alias emacs='emacs -mm'

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

# terminal exit
alias :q='exit'


# Alias to defined functions
alias fp="nocorrect fp"
