#!/bin/sh

# ZSH CONFIGS
find ~/.dotfiles/zsh -type f \
    | xargs -I {} sh -c 'ln -sf {} "$HOME"'

# BASH CONFIGS
find ~/.dotfiles/bash -type f \
    | xargs -I {} sh -c 'ln -sf {} "$HOME"'

# ALIASES
ln -s ~/.dotfiles/.aliasrc "$HOME"

# GIT CONFIGS
ln -s ~/.dotfiles/.gitconfig "$HOME"

# TMUX CONFIGS
ln -s ~/.dotfiles/tmux/.tmux.conf "$HOME"

# VIM CONFIGS
ln -s ~/.dotfiles/vim/.vimrc "$HOME"

find ~/.dotfiles -maxdepth 1 -type d \
    | grep -Ev '.dotfiles$|ssh|.git|handy-scripts|nvim-cp|tmux|fonts|vim|ansible|zsh|bash|vscode|nano' \
    | xargs -I {} sh -c 'ln -sf {} ~/.config/'

# VSCODE CONFIGS
ln -sf ~/.dotfiles/vscode/snippets ~/.config/Code/User/
ln -sf ~/.dotfiles/vscode/settings.json ~/.config/Code/User/
ln -sf ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/

# SHORTHAND FOR SYMLINK AND UNLINK
ln -sf ~/.dotfiles/symlink.sh ~/.local/bin/slnk
ln -sf ~/.dotfiles/unlink.sh ~/.local/bin/ulnk

