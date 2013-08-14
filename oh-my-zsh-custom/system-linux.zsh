if [[ "$(uname -s)" == "Linux" ]]; then
    export GPG_TTY=`tty`
    alias topproc="ps axo comm,pmem,rss,vsz --sort -rss | head -n 11"
fi
