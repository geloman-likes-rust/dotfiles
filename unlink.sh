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

# UNLINK ALACRITTY CONFIGS
[ -L ~/.config/alacritty ] && unlink ~/.config/alacritty

# UNLINK WOFI CONFIGS
[ -L ~/.config/wofi ] && unlink ~/.config/wofi

# UNLINK ROFI CONFIGS
[ -L ~/.config/rofi ] && unlink ~/.config/rofi

# UNLINK I3STATUS CONFIGS
[ -L ~/.config/i3status ] && unlink ~/.config/i3status

# UNLINK HYPR CONFIGS
[ -L ~/.config/hypr ] && unlink ~/.config/hypr

# UNLINK WAYBAR CONFIGS
[ -L ~/.config/waybar ] && unlink ~/.config/waybar

# UNLINK VSCODE CONFIGS
[ -L ~/.config/Code/User/settings.json ] && unlink ~/.config/Code/User/settings.json
[ -L ~/.config/Code/User/keybindings.json ] && unlink ~/.config/Code/User/keybindings.json

# GETTING BACK TO NORMAL
[ -f ~/.vimrc.bak ] && mv -f ~/.vimrc.bak ~/.vimrc
[ -f ~/.zshrc.bak ] && mv -f ~/.zshrc.bak ~/.zshrc
[ -f ~/.zshenv.bak ] && mv -f ~/.zshenv.bak ~/.zshenv
[ -f ~/.zprofile.bak ] && mv -f ~/.zprofile.bak ~/.zprofile
[ -f ~/.bashrc.bak ] && mv -f ~/.bashrc.bak ~/.bashrc
[ -f ~/.bash_profile.bak ] && mv -f ~/.bash_profile.bak ~/.bash_profile
[ -f ~/.inputrc.bak ] && mv -f ~/.inputrc.bak ~/.inputrc
[ -f ~/.gitconfig.bak ] && mv -f ~/.gitconfig.bak ~/.gitconfig
[ -d ~/.config/i3.bak ] && mv -f ~/.config/i3.bak ~/.config/i3
[ -d ~/.config/nvim.bak ] && mv -f ~/.config/nvim.bak ~/.config/nvim
[ -d ~/.config/kitty.bak ] && mv -f ~/.config/kitty.bak ~/.config/kitty
[ -d ~/.config/wofi.bak ] && mv -f ~/.config/wofi.bak ~/.config/wofi
[ -d ~/.config/rofi.bak ] && mv -f ~/.config/rofi.bak ~/.config/rofi
[ -d ~/.config/i3status.bak ] && mv -f ~/.config/i3status.bak ~/.config/i3status
[ -d ~/.config/hypr.bak ] && mv -f ~/.config/hypr.bak ~/.config/hypr
[ -d ~/.config/waybar.bak ] && mv -f ~/.config/waybar.bak ~/.config/waybar
[ -f ~/.config/Code/User/settings.json.bak ] && mv -f ~/.config/Code/User/settings.json.bak ~/.config/Code/User/settings.json
[ -f ~/.config/Code/User/keybindings.json.bak ] && mv -f ~/.config/Code/User/keybindings.json.bak ~/.config/Code/User/keybindings.json
