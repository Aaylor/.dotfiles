
# $1 <- for osx platform;
# $2 <- for linux platform
p() {
    [ "$(uname)" = "Darwin" ] && echo "$1" || echo "$2"
}

# Common commands
alias df="df -h"
alias du="du -h -d 2"
alias ls="$(p 'g' '')ls -a --color=auto"
alias psa="ps aux"

# Editor
alias emacs="$(p '/Applications/Emacs.app/Contents/MacOS/Emacs' 'emacs')"

# Others
alias j="jobs"
alias c="clear"
