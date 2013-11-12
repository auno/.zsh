if [[ "$HOST" == "auno01" ]]; then
    #
    # EXPORTS
    #
    export http_proxy="http://www-proxy.se.oracle.com:80"
    export https_proxy="http://www-proxy.se.oracle.com:80"
    export P4CONFIG=.p4config
    export TERM=xterm-256color
    export PATH=$PATH:/home/appeal/bin:/home/auno/.local/opt/android-sdk-linux/tools:$HOME/.gem/ruby/1.8/bin
    export P4DIFF="colordiff -u"

    #
    # ALIAS
    #
    alias diff=colordiff\ -u
    alias ack=ack-grep
    alias make=make\ -j32

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
