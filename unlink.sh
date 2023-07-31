#!/bin/sh

# UNLINK VIMRC
unlink ~/.vimrc

# UNLINK GIT CONFIGS
unlink ~/.gitconfig

# UNLINK ALIASES
unlink ~/.aliasrc

# UNLINK TMUX CONFIGS
unlink ~/.tmux.conf

# UNLINK ZSH CONFIGS
unlink ~/.zshrc
unlink ~/.zsh_prompt

# UNLINK BASH CONFIGS
unlink ~/.bashrc
unlink ~/.inputrc
unlink ~/.bash_prompt

# UNLINK I3 CONFIGS
unlink ~/.config/i3

# UNLINK NVIM CONFIGS
unlink ~/.config/nvim

# UNLINK KITTY CONFIGS
unlink ~/.config/kitty

# GETTING BACK TO NORMAL
[ -f ~/.vimrc.bak ] && mv -f ~/.vimrc.bak ~/.vimrc
[ -f ~/.zshrc.bak ] && mv -f ~/.zshrc.bak ~/.zshrc
[ -f ~/.bashrc.bak ] && mv -f ~/.bashrc.bak ~/.bashrc
[ -f ~/.inputrc.bak ] && mv -f ~/.inputrc.bak ~/.inputrc
[ -f ~/.gitconfig.bak ] && mv -f ~/.gitconfig.bak ~/.gitconfig
[ -d ~/.config/i3.bak ] && mv -f ~/.config/i3.bak ~/.config/i3
[ -d ~/.config/nvim.bak ] && mv -f ~/.config/nvim.bak ~/.config/nvim
[ -d ~/.config/kitty.bak ] && mv -f ~/.config/kitty.bak ~/.config/kitty
