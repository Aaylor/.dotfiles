# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_DIR=$HOME/.zsh.d

ZSH_THEME="dieter"              # Theme
COMPLETION_WAITING_DOTS="true"  # Display dots when waiting for completions


# Load plugins...
plugins=(brew colored-man extract jump git git-extra tmux zsh-syntax-highlighting)

# syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)


## User configuration

if [ "$(uname)" = "Darwin" ]; then
    export CLICOLOR=1                      # ls coloration
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # ls coloration
fi

if [ "$(uname)" = "Linux" ]; then
    export EDITOR='emacs -mm'
fi

# Completion
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
       /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# Allow cache on auto completion
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


# Load bash completions
autoload -U bashcompinit
bashcompinit

# Colors on completion
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:processes' list-colors "=(#b) #([0-9]#*=36=31"


source $ZSH/oh-my-zsh.sh

# Pushd
setopt auto_pushd               # make cd push old dir in dir stack
setopt pushd_ignore_dups        # no duplicates in dir stack
setopt pushd_silent             # no dir stack after pushd or popd
setopt pushd_to_home            # `pushd` = `pushd $HOME`

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
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/


# External sources
__import_external_source () {
    [ -f $ZSH_DIR/$1.zsh ] && \
        source $ZSH_DIR/$1.zsh || \
        echo "warning: $ZSH_DIR/$1.zsh does not exists." >&2
}
__import_external_source "init"
__import_external_source "fundef"
__import_external_source "aliases"

export PATH="/usr/local/bin:$HOME/.cask/bin:$PATH"
source $HOME/.profile

clear
name=$(whoami | sed -e 's/\(\<[a-zA-Z]\)\([a-zA-Z]*\>\)/\u\1\L\2/g')
echo -e "\033[1;32mWelcome, $name.\033[0m"
echo

# OPAM configuration
. /Users/aaylor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
