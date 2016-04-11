
# Random cow using random fortune.
function random_cowday() {
    cowsay -f \
           $(/bin/ls /usr/local/Cellar/cowsay/3.03/share/cows | rl | tail -n 1 \
                    | cut -d'.' -f1) "$(fortune -s)"
}

# Usage of facebook path picker.
function fp() { "$@" | fpp }



# Utilitary function for docker
function dstart() {
    docker-machine start "$1" && \
        eval `docker-machine env "$1"`
}

function dattach() {
    docker start "$1" && docker attach "$1"
}

# to continue...
