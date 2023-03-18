export ZSH="$HOME/.oh-my-zsh"

source /home/jan/.zsh-syntax-highlighting/dracula/zsh-syntax-highlighting.sh
source /home/jan/.zsh-syntax-highlighting/normal/zsh-syntax-highlighting.zsh


ZSH_THEME="dracula"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias "clr"='clear'
alias "py"="python3"
alias "sl"="ls"
alias "http"="sudo python3 -m http.server 80 --bind 127.0.0.1"
alias "vim"="nvim"

#rust
source $HOME/.cargo/env

