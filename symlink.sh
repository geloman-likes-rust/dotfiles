#!/bin/sh

# ZSH CONFIGS
ln -sf ~/.dotfiles/.zshrc "$HOME"
ln -sf "$HOME"/.dotfiles/.zsh_prompt "$HOME"

# BASH CONFIGS
ln -sf ~/.dotfiles/.bashrc "$HOME"
ln -sf ~/.dotfiles/.inputrc "$HOME"
ln -sf "$HOME"/.dotfiles/.bash_prompt "$HOME"

# ALIASES
ln -sf "$HOME"/.dotfiles/.aliasrc "$HOME"

# GIT CONFIGS
ln -sf "$HOME"/.dotfiles/.gitconfig "$HOME"

# TMUX CONFIGS
ln -sf "$HOME"/.dotfiles/.tmux.conf "$HOME"

# VIM CONFIGS
ln -sf "$HOME"/.dotfiles/.vimrc "$HOME"

# I3 CONFIGS
ln -sf ~/.dotfiles/.config/i3 ~/.config/i3

# NVIM CONFIGS
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim

# KITTY CONFIGS
ln -sf ~/.dotfiles/.config/kitty ~/.config/kitty

# SHORTHAND FOR SYMLINK AND UNLINK
[ -f ~/.local/bin/slnk ] || ln -sf ~/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -sf ~/.dotfiles/unlink.sh ~/.local/bin/ulnk
