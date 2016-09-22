
if [ -z $ENV_SOURCED ]; then
    export ENV_SOURCED=1
    emulate sh -c ". ~/.profile"
fi


