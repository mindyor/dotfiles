export GREP_OPTIONS="--color"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcxy

autoload -U colors && colors
setopt promptsubst

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[black]%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

git_prompt_info () {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

kube_context() {
  context=$(cat ~/.kube/config | grep "current-context:" | sed "s/current-context: //")
  if [[ -n $context ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$context$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='
%F{cyan}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)$(kube_context) %F{red}%(!.⏚  %n ⏚ .❤)%f '

