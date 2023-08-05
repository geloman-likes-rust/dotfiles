#!/bin/sh

# UNLINK VIMRC
[ -L ~/.vimrc ] && unlink ~/.vimrc

# UNLINK GIT CONFIGS
[ -L ~/.gitconfig ] && unlink ~/.gitconfig

# UNLINK ALIASES
[ -L ~/.aliasrc ] && unlink ~/.aliasrc

# UNLINK TMUX CONFIGS
[ -L ~/.tmux.conf ] && unlink ~/.tmux.conf

# UNLINK ZSH CONFIGS
[ -L ~/.zshrc ] && unlink ~/.zshrc
[ -L ~/.zshenv ] && unlink ~/.zshenv
[ -L ~/.zprofile ] && unlink ~/.zprofile
[ -L ~/.zsh_prompt ] && unlink ~/.zsh_prompt

# UNLINK BASH CONFIGS
[ -L ~/.bashrc ] && unlink ~/.bashrc
[ -L ~/.inputrc ] && unlink ~/.inputrc
[ -L ~/.bash_prompt ] && unlink ~/.bash_prompt
[ -L ~/.bash_profile ] && unlink ~/.bash_profile

# UNLINK I3 CONFIGS
[ -L ~/.config/i3 ] && unlink ~/.config/i3

# UNLINK NVIM CONFIGS
[ -L ~/.config/nvim ] && unlink ~/.config/nvim

# UNLINK KITTY CONFIGS
[ -L ~/.config/kitty ] && unlink ~/.config/kitty

# GETTING BACK TO NORMAL
[ -f ~/.vimrc.bak ] && mv -f ~/.vimrc.bak ~/.vimrc
[ -f ~/.zshrc.bak ] && mv -f ~/.zshrc.bak ~/.zshrc
[ -f ~/.bashrc.bak ] && mv -f ~/.bashrc.bak ~/.bashrc
[ -f ~/.inputrc.bak ] && mv -f ~/.inputrc.bak ~/.inputrc
[ -f ~/.gitconfig.bak ] && mv -f ~/.gitconfig.bak ~/.gitconfig
[ -d ~/.config/i3.bak ] && mv -f ~/.config/i3.bak ~/.config/i3
[ -d ~/.config/nvim.bak ] && mv -f ~/.config/nvim.bak ~/.config/nvim
[ -d ~/.config/kitty.bak ] && mv -f ~/.config/kitty.bak ~/.config/kitty
