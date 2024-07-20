# SOURCE THESE
# -----------------------------------
[ -f ~/.dotfiles/.aliasrc ] && . ~/.dotfiles/.aliasrc
[ -f ~/.dotfiles/bash/.bash_prompt ] && . ~/.dotfiles/bash/.bash_prompt
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

# ADD THESE TO PATH
# -----------------------------------
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin
[ -d ~/.dotfiles/handy-scripts/bin ] && PATH=$PATH:~/.dotfiles/handy-scripts/bin
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin
[ -d ~/.local/share/nvim/mason/bin ] && PATH=$PATH:$HOME/.local/share/nvim/mason/bin

# CUSTOM FUNCTIONS
# -----------------------------------
fast_cd() {
  selected=$(fast-cd); [ -z "$selected" ] || cd "$selected" || return
}
change_worktree() {
  selected=$(git-worktree); [ -n "$selected" ] && cd "$selected" || return
}

# CUSTOM KEYMAPS
# -----------------------------------
bind -x '"\C-p": tmux-sessionizer'
bind -x '"\C-b": randbg'
bind -x '"\C-f": find-files'
bind '"\C-o": "fast_cd; clear\n"'
bind '"\C-n": "change_worktree; clear\n"'

## ALL ENVIRONMENT VARIABLE GOES HERE
# -----------------------------------
SHELL="/usr/bin/bash"
[ -n "$(command -v nvim)" ] && EDITOR="nvim" || EDITOR="vim"

PINK=#FF52A2
PURPLE=#DAB8F3
BG=#2a324a
FG=#93a4c3
MINT=#00FFAB
WHITE=#EDEDED

export PATH EDITOR SHELL
[ -f ~/.fzf.bash ] && export FZF_DEFAULT_OPTS="--ansi --color=bg+:$BG,fg+:$FG,gutter:-1,border:$PURPLE,hl:$MINT,hl+:$PINK,query:$PINK,pointer:$PINK,label:$WHITE,info:$MINT,spinner:$PURPLE,header:$PURPLE --border=rounded"

. "$HOME/.cargo/env"

# opam configuration
[ -n "$(command -v opam)" ] && eval "$(opam env)"

# starship configuration
# [ -n "$(command -v starship)" ] && eval "$(starship init zsh)"
