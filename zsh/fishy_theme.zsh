# Sets color variable such as $fg, $bg, $color and $reset_color
autoload -U colors && colors

# Expand variables and commands in PROMPT variables
setopt PROMPT_SUBST

# ZSH Theme emulating the Fish shell's default prompt.
_fishy_collapsed_wd() {
  local i pwd
  pwd=("${(s:/:)PWD/#$HOME/~}")
  if (( $#pwd > 1 )); then
    for i in {1..$(($#pwd-1))}; do
      if [[ "$pwd[$i]" = .* ]]; then
        pwd[$i]="${${pwd[$i]}[1,2]}"
      else
        pwd[$i]="${${pwd[$i]}[1]}"
      fi
    done
  fi
  echo "${(j:/:)pwd}"
}

local user_color='green'; [ $UID -eq 0 ] && user_color='red'
# PROMPT='%n@%m %{$fg[$user_color]%}$(_fishy_collapsed_wd)%{$reset_color%}%(!.#.>) '
PROMPT='%{$fg[$user_color]%}[%n@%m]%{$reset_color%} $(_fishy_collapsed_wd)%(!.#.>) '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

# local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
# RPROMPT="${RPROMPT}"'${return_status}$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

# ZSH_THEME_GIT_PROMPT_PREFIX=" "
# ZSH_THEME_GIT_PROMPT_SUFFIX=""
# ZSH_THEME_GIT_PROMPT_DIRTY=""
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"
