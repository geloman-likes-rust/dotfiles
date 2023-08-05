[ -f ~/.zsh_prompt ] && . ~/.zsh_prompt
[ -f ~/.aliasrc ] && . ~/.aliasrc

# vi mode
bindkey -v

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

## source nvm
#-----------------------------------------------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## source fzf
#-----------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
