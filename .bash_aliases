# navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# tmux aliases
alias tls="tmux ls"
alias tks="tmux kill-server"
alias ta="tmux a"
alias tns="tmux new -s"
alias trn="tmux rename-session -t"

# version control aliases
alias glo="git log --oneline"
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gu="git restore --stage"
alias gcm="git commit -m"
alias gp="git push"
alias gdf="git diff"
alias gco="git-branch-previewer"

# additional aliases
alias size-of="du -sh"
alias size-all="du -hc"
alias ls='exa --no-user --no-time --no-filesize -l'
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
alias mysql-status="systemctl status mysqld.service"
alias redis-start="sudo systemctl start redis.service"
alias redis-stop="sudo systemctl stop redis.service"
alias redis-status="systemctl status redis.service"
alias mongo-start="sudo systemctl start mongod.service"
alias mongo-stop="sudo systemctl stop mongod.service"
alias mongo-status="systemctl status mongod.service"
alias ndoe="node"

# personal aliases
alias celluloid="flatpak run io.github.celluloid_player.Celluloid"
alias obs="flatpak run com.obsproject.Studio"
alias suspend="systemctl suspend"
alias restart="systemctl reboot"
