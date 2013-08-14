bindkey -e # Set initial keymap to emacs emulation.

bindkey '^[[1~' beginning-of-line                   # HOME
bindkey '^[[2~' overwrite-mode                      # INSERT
bindkey '^[[3~' delete-char                         # DELETE
bindkey '^[[4~' end-of-line                         # END
bindkey '^[[5~' history-beginning-search-backward   # PAGE UP
bindkey '^[[6~' history-beginning-search-forward    # PAGE DOWN
bindkey '^[[H'	beginning-of-line                   # HOME
bindkey '^[[F'	end-of-line                         # END

bindkey '^Xe'   edit-command-line
