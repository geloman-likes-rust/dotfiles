EDITOR="nvim"

[ -f ~/.aliasrc ] && . ~/.aliasrc
[ -f ~/.zsh_prompt ] && . ~/.zsh_prompt
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH

# vi mode
bindkey -v
export KEYTIMEOUT=1

# bind '"\C-f": "selected=$(fast-cd); [[ -z $selected ]] || cd $selected; clear\n"'
function fast_cd() {
    selected=$(fast-cd); [[ -z $selected ]] || cd $selected
}

# handy-scripts
bindkey -s ^o "fast_cd\nclear\n"
bindkey -s ^f "fvi\nclear\n"
bindkey -s ^b "randbg\nclear\n"
bindkey -s ^p "tmux-sessionizer\nclear\n"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## add cargo to PATH
#-----------------------------------------------------
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin && export PATH


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


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
