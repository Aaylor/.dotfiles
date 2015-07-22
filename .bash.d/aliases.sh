
# Ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git aliases
alias g='git'
alias gc='git clone'
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gp='git push'
alias gpm='git push origin master'

# Tool aliases
alias check='cppcheck --enable=all'
alias gcc='gcc -Wall -Wextra -pedantic -std=c99'
alias gccp='gcc -Wall -Wextra -Werror -pedantic -std=c99'
alias valmemory='valgrind --leak-check=full --track-origins=yes \
    --show-reachable=yes --read-var-info=yes'
alias vim='vim -p'

# Other
alias c='clear'
alias upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
