if [[ "$HOST" == "zero" ]]; then
    #
    # EXPORTS
    #
    export TERM=xterm-256color

    #
    # ALIAS
    #
    alias diff=colordiff\ -u
    alias make=make\ -j4

    #
    # MISC
    #

    # Load JDK chooser into a shell session *as a function*
    if [ "$UID" != "0" ]; then
        [[ -s "$HOME/.local/opt/jdk-chooser/scripts/jdk" ]] && source "$HOME/.local/opt/jdk-chooser/scripts/jdk"
    fi

    # Load RVM into a shell session *as a function*
    if [ "$UID" != "0" ]; then
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
    fi

    # Load NVM
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

    if [ -d "$HOME/.npm-packages/bin" ]; then
        export PATH="$HOME/.npm-packages/bin:$PATH"
    fi
fi
