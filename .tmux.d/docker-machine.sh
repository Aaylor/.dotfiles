#!/bin/bash

# Count docker machine running on the current session.
# -e, to get the count of machines in error   state
# -i, to get the count of machines in idle    state
# -r, to get the count of machines in running state


case "$1" in
    -e) state="Error"   ;;
    -s) state="Stopped" ;;
    -r) state="Running" ;;
    *)  echo "<param error>"; exit 1 ;;
esac


docker-machine ls | grep "$state" | wc -l | sed 's/[[:space:]]//g'
