#!/bin/sh

# ZSH CONFIGS
[ -L ~/.zshrc ] || ln -s ~/.dotfiles/zsh/.zshrc "$HOME"
[ -L ~/.zshenv ] || ln -s ~/.dotfiles/zsh/.zshenv "$HOME"
[ -L ~/.zprofile ] || ln -s ~/.dotfiles/zsh/.zprofile "$HOME"
[ -L ~/.zsh_prompt ] || ln -s ~/.dotfiles/zsh/.zsh_prompt "$HOME"

# BASH CONFIGS
[ -L ~/.bashrc ] || ln -s ~/.dotfiles/bash/.bashrc "$HOME"
# [ -L ~/.inputrc ] || ln -s ~/.dotfiles/bash/.inputrc "$HOME"
[ -L ~/.bash_prompt ] || ln -s ~/.dotfiles/bash/.bash_prompt "$HOME"
[ -L ~/.bash_profile ] || ln -s ~/.dotfiles/bash/.bash_profile "$HOME"

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

# ALACRITTY CONFIGS
[ -L ~/.config/alacritty ] || ln -s ~/.dotfiles/alacritty ~/.config/

# WOFI CONFIGS
[ -L ~/.config/wofi ] || ln -s ~/.dotfiles/wofi ~/.config/

# ROFI CONFIGS
[ -L ~/.config/rofi ] || ln -s ~/.dotfiles/rofi ~/.config/

# I3STATUS CONFIGS
[ -L ~/.config/i3status ] || ln -s ~/.dotfiles/i3status ~/.config/

# HYPR CONFIGS
[ -L ~/.config/hypr ] || ln -s ~/.dotfiles/hypr ~/.config/

# WAYBAR CONFIGS
[ -L ~/.config/waybar ] || ln -s ~/.dotfiles/waybar ~/.config/

# PICOM CONFIGS
[ -L ~/.config/picom ] || ln -s ~/.dotfiles/picom ~/.config/

# DUNST CONFIGS
[ -L ~/.config/dunst ] || ln -s ~/.dotfiles/dunst ~/.config/

# VSCODE CONFIGS
[ -L ~/.config/Code/User/snippets ] || ln -s ~/.dotfiles/vscode/snippets ~/.config/Code/User/
[ -L ~/.config/Code/User/settings.json ] || ln -s ~/.dotfiles/vscode/settings.json ~/.config/Code/User/
[ -L ~/.config/Code/User/keybindings.json ] || ln -s ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/

# SHORTHAND FOR SYMLINK AND UNLINK
[ -L ~/.local/bin/slnk ] || ln -s ~/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -L ~/.local/bin/ulnk ] ||  ln -s ~/.dotfiles/unlink.sh ~/.local/bin/ulnk
