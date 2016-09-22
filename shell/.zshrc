# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dieter"              # Theme
COMPLETION_WAITING_DOTS="true"  # Display dots when waiting for completions

plugins=(
    brew                        # Brew completion for OSX
    colored-man                 # Man coloration
    extract                     # Provide an extract command (for every archive)
    jump
    git                         # Git completion
    git-extra                   # Extra git completion
    tmux
    zsh-syntax-highlighting
)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(
    brackets
    cursor
    main
    line
    pattern
    root
)

# Completion
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
       /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# Load bash completions
autoload -U bashcompinit
bashcompinit

# Color on completion
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:processes' list-colors "=(#b) #([0-9]#*=36=31"

source $ZSH/oh-my-zsh.sh

# Options
setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
setopt glob_dots                # include dotfiles in globbing
unsetopt bg_nice                # no lower prio for background jobs
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion
unsetopt nomatch                # avoid "no matched found" errors
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/

# . $HOME/.profile
. $HOME/.zsh.d/init.zsh
