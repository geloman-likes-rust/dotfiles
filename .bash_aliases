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
alias github-token="gpg -d ~/.personal/access-token/token.txt.gpg"

# additional aliases
alias ls='exa -lh'
alias v='nvim'
alias vi='nvim'
#alias vim='nvim'
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
alias minecraft="sudo java -jar ~/.mod-minecraft/TLauncher-2.879.jar"
alias next-app="npx create-next-app@latest ."
alias fixpkgs='sudo dnf install @^rpmfusion-free-release-f$(rpm -E %fedora) -y && sudo dnf check && sudo dnf install -y && sudo dnf autoremove -y'
alias mysql-run="mysql -v --table"
alias ndoe="node"


## terminal appearance
## -----------------------------------------------------
#   hex-color: #1E2127;
#   font-family: hack-nerdfont;
#   font-size: 18px;
#   terminal-size: 80 24;
#   cell-spacing: 1 1;
#   allow-blinking-text: always;
#   cursor-shape: block;
#   cursor-blinking: enabled;
#   scrollbar: hidden;
## -----------------------------------------------------
