if [[ "$UID" == "0" ]]; then
    USER_PROMPT="%m"
    USER_PROMPT_COLOR="red"
else
    USER_PROMPT="%n@%m"
    USER_PROMPT_COLOR="green"
fi

auno_precmd() {
    if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]]; then
        ZSH_THEME_GIT_PROMPT_PREFIX="git:"
        ZSH_THEME_GIT_PROMPT_SUFFIX=""
        ZSH_THEME_GIT_PROMPT_DIRTY="⚡"
        ZSH_THEME_GIT_PROMPT_CLEAN=""

        VCS_PROMPT=" %{$fg_no_bold[yellow]%}<$(git_prompt_info)>"
    else
        VCS_PROMPT=''
    fi
}
add-zsh-hook precmd auno_precmd

export PROMPT=" %{${fg_bold[$USER_PROMPT_COLOR]}%}$USER_PROMPT %{$fg_bold[default]%}>%{$fg_no_bold[default]%}> %{$reset_color%}"
export RPROMPT="%{$fg_no_bold[default]%}%~\$VCS_PROMPT %{$fg_bold[blue]%}[%(?.%{$fg_bold[default]%}0.%{$fg_bold[red]%}%?)%{$fg_bold[blue]%}]%{$reset_color%}"
