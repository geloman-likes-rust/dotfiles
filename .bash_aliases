# navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# tmux aliases
alias tls="tmux ls"
alias tks="tmux kill-server"

# version control aliases
alias glo="git log --oneline"
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias github-token="gpg -d ~/.personal/access-token/token.txt.gpg"

# additional aliases
alias ls='exa -lh'
alias v='nvim'
alias vi='nvim'
alias vii='nvim'
alias iv='nvim'
alias ivi='nvim'
alias ivii='nvim'
alias dev="cd ~/.development"
alias dotfiles="cd ~/.dotfiles"
alias config="cd ~/.dotfiles/.config"
alias python='python3'
alias mem="neofetch memory"
alias cpu="neofetch cpu"
alias disk="neofetch disk"
alias uptime="neofetch uptime"
alias mysql-run="mysql -v --table"
alias mysql-start="sudo systemctl start mysqld.service"
alias mysql-stop="sudo systemctl stop mysqld.service"
alias redis-start="sudo systemctl start redis.service"
alias redis-stop="sudo systemctl stop redis.service"
alias mongo-start="sudo systemctl start mongod.service"
alias mongo-stop="sudo systemctl stop mongod.service"
alias ndoe="node"


## terminal appearance
## -----------------------------------------------------
#   background: #1a212e;
#   font-family: hack-nerdfont;
## -----------------------------------------------------
