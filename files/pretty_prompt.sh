export GREP_OPTIONS="--color"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcxy

function setup_prompt() {
  BLACK="\[\e[0;30m\]"
  DGRAY="\[\e[1;30m\]"
  BLUE="\[\e[0;34m\]"
  LBLUE="\[\e[1;34m\]"
  GREEN="\[\e[0;32m\]"
  LGREEN="\[\e[1;32m\]"
  CYAN="\[\e[0;36m\]"
  LCYAN="\[\e[1;36m\]"
  RED="\[\e[0;31m\]"
  LRED="\[\e[1;31m\]"
  PURPLE="\[\e[0;35m\]"
  LPURPLE="\[\e[1;35m\]"
  BROWN="\[\e[0;33m\]"
  YELLOW="\[\e[1;33m\]"
  LGRAY="\[\e[0;37m\]"
  WHITE="\[\e[1;37m\]"
  RESET_COLOR="\[\e[0m\]"

  if [[ -n "$PS1" ]]; then

    export PS1="$CYAN\\w${RED} ❤ ${RESET_COLOR}"
    export SUDO_PS1="$BLUE\\u$WHITE in $LGRAY\\w\\n${RED}λ ${RESET_COLOR}"
  fi
}
setup_prompt
