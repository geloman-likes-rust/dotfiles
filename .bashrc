set -o vi
export EDITOR="nvim"
[ -f /etc/bashrc ] && . /etc/bashrc
[ -f ~/.aliasrc ] && . "$HOME"/.aliasrc
[ -f ~/.bash_prompt ] && . "$HOME"/.bash_prompt
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH

## bind (ctrl-p) --> tmux-sessionizer
#-----------------------------------------------------
bind -x '"\C-p": tmux-sessionizer'

## bind (ctrl-b) --> randbg
#-----------------------------------------------------
bind -x '"\C-b": randbg'

## bind (ctrl-f) --> randbg
#-----------------------------------------------------
bind -x '"\C-f": fvi'

## bind (ctrl-o) --> fast-cd
#-----------------------------------------------------
fast_cd() {
  selected=$(fast-cd); [[ -z $selected ]] || cd "$selected"
}
bind '"\C-o": "fast_cd; clear\n"'

## add nvm to PATH
#-----------------------------------------------------
[ -d "$HOME"/.nvm ] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## add miniconda to PATH
#-----------------------------------------------------
[ -d ~/.miniconda/bin ] && PATH=$PATH:$HOME/.miniconda/bin && export PATH


RED=#f65866
PINK=#FF52A2
PURPLE=#DAB8F3
BG=#2a324a
FG=#93a4c3
MINT=#00FFAB
WHITE=#EDEDED

## source fzf
#-----------------------------------------------------
[ -f ~/.fzf.bash ] && . "$HOME"/.fzf.bash && export FZF_DEFAULT_OPTS="--ansi --color=bg+:$BG,fg+:$FG,gutter:-1,border:$PURPLE,hl:$MINT,hl+:$PINK,query:$PINK,pointer:$PINK,label:$WHITE,info:$MINT,spinner:$PURPLE,header:$PURPLE --border=rounded"

## add cargo to PATH
#-----------------------------------------------------
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin && export PATH
