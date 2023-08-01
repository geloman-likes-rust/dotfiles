#!/bin/sh

# ZSH CONFIGS
[ -L ~/.zshrc ] || ln -s ~/.dotfiles/zsh/.zshrc "$HOME"
[ -L ~/.zsh_prompt ] || ln -s "$HOME"/.dotfiles/zsh/.zsh_prompt "$HOME"

# BASH CONFIGS
[ -L ~/.bashrc ] || ln -s ~/.dotfiles/bash/.bashrc "$HOME"
[ -L ~/.inputrc ] || ln -s ~/.dotfiles/bash/.inputrc "$HOME"
[ -L ~/.bash_prompt ] || ln -s ~/.dotfiles/bash/.bash_prompt "$HOME"

# ALIASES
[ -L ~/.aliasrc ] || ln -s ~/.dotfiles/.aliasrc "$HOME"

# GIT CONFIGS
[ -L ~/.gitconfig ] || ln -s ~/.dotfiles/.gitconfig "$HOME"

# TMUX CONFIGS
[ -L ~/.tmux.conf ] || ln -s ~/.dotfiles/tmux/.tmux.conf "$HOME"

# VIM CONFIGS
[ -L ~/.vimrc ] || ln -s ~/.dotfiles/vim/.vimrc "$HOME"

# I3 CONFIGS
[ -L ~/.config/i3 ] || ln -s ~/.dotfiles/i3 ~/.config/

# NVIM CONFIGS
[ -L ~/.config/nvim ] || ln -s ~/.dotfiles/nvim ~/.config/

# KITTY CONFIGS
[ -L ~/.config/kitty ] || ln -s ~/.dotfiles/kitty ~/.config/

# SHORTHAND FOR SYMLINK AND UNLINK
[ -L ~/.local/bin/slnk ] || ln -s ~/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -L ~/.local/bin/ulnk ] ||  ln -s ~/.dotfiles/unlink.sh ~/.local/bin/ulnk
