# SOURCE THESE
# -----------------------------------
[ -f ~/.dotfiles/.aliasrc ] && . ~/.dotfiles/aliasrc
[ -n "$(command -v fzf)" ] && . ~/.dotfiles/fzf/.fzf.bash

# ADD THESE TO PATH
# -----------------------------------
[ -d ~/.cargo ] && PATH="$PATH:$HOME/.cargo/bin"
[ -d ~/.local/bin ] && PATH="$PATH:$HOME/.local/bin"
[ -d ~/.dotfiles/handy-scripts/bin ] && PATH="$PATH:~/.dotfiles/handy-scripts/bin"

# CUSTOM KEYMAPS
# -----------------------------------
bind -x '"\C-p": tmux-sessionizer'

## ALL ENVIRONMENT VARIABLE GOES HERE
# -----------------------------------
SHELL="/usr/bin/bash"
EDITOR="nvim"
FZF_CTRL_R_OPTS="--border-label ' command history '"
FZF_CTRL_T_OPTS="--border-label ' relative files '"
FZF_ALT_C_OPTS="--border-label ' relative directories '"
FZF_DEFAULT_OPTS_FILE="$HOME/.dotfiles/fzf/.fzfrc"
[ -z "$(command -v nvim)" ] && EDITOR="vim"
export PATH EDITOR

# opam configuration
[ -n "$(command -v opam)" ] && eval "$(opam env)"

# starship configuration
[ -n "$(command -v starship)" ] && eval "$(starship init bash)"
