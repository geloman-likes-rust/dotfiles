#!/bin/sh

# ZSH CONFIGS
[ -L ~/.zshrc ] || ln -s ~/.dotfiles/.zshrc "$HOME"
[ -L ~/.zsh_prompt ] || ln -s "$HOME"/.dotfiles/.zsh_prompt "$HOME"

# BASH CONFIGS
[ -L ~/.bashrc ] || ln -s ~/.dotfiles/.bashrc "$HOME"
[ -L ~/.inputrc ] || ln -s ~/.dotfiles/.inputrc "$HOME"
[ -L ~/.bash_prompt ] || ln -s "$HOME"/.dotfiles/.bash_prompt "$HOME"

# ALIASES
[ -L ~/.aliasrc ] || ln -s "$HOME"/.dotfiles/.aliasrc "$HOME"

# GIT CONFIGS
[ -L ~/.gitconfig ] || ln -s "$HOME"/.dotfiles/.gitconfig "$HOME"

# TMUX CONFIGS
[ -L ~/.tmux.conf ] || ln -s "$HOME"/.dotfiles/.tmux.conf "$HOME"

# VIM CONFIGS
[ -L ~/.vimrc ] || ln -s "$HOME"/.dotfiles/.vimrc "$HOME"

# I3 CONFIGS
[ -L ~/.config/i3 ] || ln -s ~/.dotfiles/.config/i3 ~/.config/i3

# NVIM CONFIGS
[ -L ~/.config/nvim ] || ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

# KITTY CONFIGS
[ -L ~/.config/kitty ] || ln -s ~/.dotfiles/.config/kitty ~/.config/kitty

# SHORTHAND FOR SYMLINK AND UNLINK
[ -L ~/.local/bin/slnk ] || ln -s ~/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -L ~/.local/bin/ulnk ] ||  ln -s ~/.dotfiles/unlink.sh ~/.local/bin/ulnk
