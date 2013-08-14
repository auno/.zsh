if [[ "$HOST" == "skynet" ]]; then
    #
    # EXPORTS
    #
    #export GPG_TTY=`tty`

    #
    #  ALIAS
    #
    alias screen=screen-wrapper
    alias telnet=ktelnet
    alias diff=colordiff\ -u
    alias make=make\ -j4
    alias ack=ack-grep
    alias s=stopalarm\ -s

    if [ "$DISPLAY" != "" ]; then
        xset -b
    fi

    # Load RVM into a shell session *as a function*
    if [ "$UID" != "0" ]; then
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
    fi
fi
