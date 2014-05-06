if [[ "$HOST" == "auno02" || "$HOST" == "domino" ]]; then
    #
    # EXPORTS
    #
    export TERM=xterm-256color
    export P4DIFF="colordiff -u"

    #
    # ALIAS
    #
    alias diff=colordiff\ -u
    alias make=make\ -j4

    #
    # MISC
    #
    xset -b

    # Load JDK chooser into a shell session *as a function*
    if [ "$UID" != "0" ]; then
        [[ -s "$HOME/.local/opt/jdk-chooser/scripts/jdk" ]] && source "$HOME/.local/opt/jdk-chooser/scripts/jdk"
    fi

    # Load RVM into a shell session *as a function*
    if [ "$UID" != "0" ]; then
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
    fi
fi
