# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh/oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh/oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="auno"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored_man debian git mercurial rvm)

# Set variables before loading oh-my-zsh as some of them are referenced therein
HISTFILE=~/.zsh_history
SAVEHIST=25000
HISTSIZE=25000
export BROWSER=firefox
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH"
export PAGER=less
if [ "$DISPLAY" != "" ]; then export TERM=xterm-256color; fi

source $ZSH/oh-my-zsh.sh
