function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,⏲,")
}

PROMPT='%{$fg[green]%}$(collapse_pwd) %{$fg[red]%}%D{[%I:%M]} %{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}
%{$fg[blue]%}⇝%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=" )"
ZSH_THEME_GIT_PROMPT_DIRTY="🍅"
ZSH_THEME_GIT_PROMPT_CLEAN="😃"
