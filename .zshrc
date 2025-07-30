export ZSH="$HOME/.oh-my-zsh"
export LS_COLORS=$LS_COLORS:'ow=:'

source /home/eli25359/.zsh-syntax-highlighting/dracula/zsh-syntax-highlighting.sh
source /home/eli25359/.zsh-syntax-highlighting/normal/zsh-syntax-highlighting.zsh


ZSH_THEME="dracula"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias "clr"='clear'
alias "py"="python3"
alias "sl"="ls"
alias "http"="sudo python3 -m http.server 80 --bind 127.0.0.1"
alias "vim"="nvim"

PATH=$PATH:/opt/nvim/
PATH=$PATH:/opt/fd/
PATH=$PATH:/snap/bin/
