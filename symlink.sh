#!/bin/sh

# ZSH CONFIGS
ln -sf ~/.dotfiles/zsh/.zshrc "$HOME"

# BASH CONFIGS
ln -sf ~/.dotfiles/bash/.bashrc "$HOME"

# ALIASES
ln -sf ~/.dotfiles/.aliasrc "$HOME"

# GIT CONFIGS
ln -sf ~/.dotfiles/.gitconfig "$HOME"

# TMUX CONFIGS
ln -sf ~/.dotfiles/tmux/.tmux.conf "$HOME"

# VIM CONFIGS
ln -sf ~/.dotfiles/vim/.vimrc "$HOME"

find ~/.dotfiles -maxdepth 1 -type d \
    | grep -Ev '.dotfiles$|ssh|.git|handy-scripts|nvim-cp|tmux|fonts|vim|ansible|zsh|bash|vscode|nano' \
    | xargs -I {} sh -c 'ln -sf {} ~/.config/'

# NVIM CONFIG
ln -sf ~/.dotfiles/nvim ~/.config/

# VSCODE CONFIGS
ln -sf ~/.dotfiles/vscode/snippets ~/.config/Code/User/
ln -sf ~/.dotfiles/vscode/settings.json ~/.config/Code/User/
ln -sf ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/

# SHORTHAND FOR SYMLINK AND UNLINK
ln -sf ~/.dotfiles/symlink.sh ~/.local/bin/slnk
ln -sf ~/.dotfiles/unlink.sh ~/.local/bin/ulnk
