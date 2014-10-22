if [ $UID -eq 0 ]; then 
    USER_COLOR=$fg_bold[red]
    USER_INDICATOR="#"
else
    USER_COLOR=$fg_bold[blue]
    USER_INDICATOR="$"
fi

PROMPT='%{$fg_bold[blue]%}%c $(git_prompt_info)%{$USER_COLOR%}$USER_INDICATOR %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

