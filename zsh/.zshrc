export EDITOR="nvim"
[ -f ~/.zsh_prompt ] && . ~/.zsh_prompt
[ -f ~/.aliasrc ] && . ~/.aliasrc
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH
[ -d ~/.dotfiles/handy-scripts/bin ] && PATH=$PATH:$HOME/.dotfiles/handy-scripts/bin
export SHELL="/bin/zsh"

# vi mode
bindkey -v
export KEYTIMEOUT=1

function fast_cd() {
    selected=$(fast-cd); [[ -z $selected ]] || cd $selected
}

function change_worktree() {
    selected=$(git-worktree); [[ -n $selected ]] && cd $selected
}

# handy-scripts
bindkey -s ^o "fast_cd; clear\n"
bindkey -s ^f "find-files; clear\n"
bindkey -s ^b "randbg; clear\n"
bindkey -s ^p "tmux-sessionizer; clear\n"
bindkey -s ^n "change_worktree; clear\n"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}

zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

## add nvm to PATH
#-----------------------------------------------------
[ -d $HOME/.nvm ] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## add miniconda to PATH
#-----------------------------------------------------
[ -d ~/.miniconda/bin ] && PATH=$PATH:$HOME/.miniconda/bin && export PATH


## source fzf
#-----------------------------------------------------

YELLOW=#FF8400
PINK=#FF52A2
PURPLE=#DAB8F3
BG=#2a324a
FG=#93a4c3
MINT=#00FFAB
WHITE=#EDEDED

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh && export FZF_DEFAULT_OPTS="--ansi --color=bg+:$BG,fg+:$FG,gutter:-1,border:$PURPLE,hl:$MINT,hl+:$PINK,query:$PINK,pointer:$PINK,label:$WHITE,info:$MINT,spinner:$PURPLE,header:$PURPLE --border=rounded"


## add cargo to PATH
#-----------------------------------------------------
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin && export PATH
