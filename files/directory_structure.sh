# for navigating around in the directory structure
# and light manipulation

alias ls='ls -G' # ls with colours!
alias ll='ls -la'
alias mkdir="mkdir -pv" # create all subfolders
function mcd() { 
    mkdir -p $1 && cd $1 
}

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias untar="tar xvzf"
