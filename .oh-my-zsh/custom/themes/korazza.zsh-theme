# Korazza zsh prompt theme
__zsh_prompt() {
  local prompt_username
  
  if [ ! -z "${GITHUB_USER}" ]; then 
    prompt_username="@${GITHUB_USER}"
  else
    prompt_username="%n"
  fi

  # user
  PROMPT="%{$fg[green]%}${prompt_username} %(?:%{$reset_color%}❯ :%{$fg[red]%}❯ )"

  # working directory    
  PROMPT+='%{$fg_bold[blue]%}%(5~|%-1~/…/%3~|%4~)%{$reset_color%} '

  # git status
  PROMPT+='$(git_prompt_info)'

  # reset
  PROMPT+='%{$fg[white]%}$ %{$reset_color%}'
    
  unset -f __zsh_prompt
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[yellow]%}✗%{$fg_bold[cyan]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[cyan]%})"

__zsh_prompt
