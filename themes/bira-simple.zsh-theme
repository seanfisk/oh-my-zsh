#! /bin/zsh -f
# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
if hash pyenv &>/dev/null; then
  local pyenv_version='%{$fg[green]%}‹$(pyenv version-name)›%{$reset_color%}'
fi
if hash rbenv &>/dev/null; then
  local rbenv_version='%{$fg[red]%}‹$(rbenv version-name)›%{$reset_color%}'
fi

PROMPT="${user_host}${current_dir} ${git_branch}${pyenv_version} ${rbenv_version}
%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
