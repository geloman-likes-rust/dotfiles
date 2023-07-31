#!/bin/sh

[ -d ~/.personal/wallpaper ] || git clone https://github.com/geloman-likes-rust/desktop-wallpaper ~/.personal/wallpaper

[ -d ~/.local ] || mkdir ~/.local
[ -d ~/.local/bin ] || mkdir ~/.local/bin
[ -d ~/.config ] || mkdir ~/.config

# CREATING BACKUPS
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.bak
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
[ -f ~/.gitconfig ] && mv ~/.gitconfig ~/.gitconfig.bak
[ -d ~/.config/i3 ] && mv ~/.config/i3 ~/.config/i3.bak
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak
[ -d ~/.config/kitty ] && mv ~/.config/kitty ~/.config/kitty.bak

[ -f ~/.profile ] && echo ". \"\$HOME/.dotfiles/.default_background\"" >> ~/.profile

~/.dotfiles/install.sh
[ -f ~/.local/bin/slnk ] || ~/.dotfiles/symlink.sh
