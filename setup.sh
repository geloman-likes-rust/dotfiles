#!/bin/sh

[ -d ~/.personal/wallpaper ] || git clone https://github.com/geloman-likes-rust/desktop-wallpaper ~/.personal/wallpaper

[ -d ~/.local ] || mkdir ~/.local
[ -d ~/.local/bin ] || mkdir ~/.local/bin
[ -d ~/.config ] || mkdir ~/.config

# CREATING BACKUPS
[ -f ~/.vimrc ] && mv -f ~/.vimrc ~/.vimrc.bak
[ -f ~/.zshrc ] && mv -f ~/.zshrc ~/.zshrc.bak
[ -f ~/.zshenv ] && mv -f ~/.zshenv ~/.zshenv.bak
[ -f ~/.zprofile ] && mv -f ~/.zprofile ~/.zprofile.bak
[ -f ~/.bashrc ] && mv -f ~/.bashrc ~/.bashrc.bak
[ -f ~/.bash_profile ] && mv -f ~/.bash_profile ~/.bash_profile.bak
[ -f ~/.inputrc ] && mv -f ~/.inputrc ~/.inputrc.bak
[ -f ~/.gitconfig ] && mv -f ~/.gitconfig ~/.gitconfig.bak
[ -d ~/.config/i3 ] && mv -f ~/.config/i3 ~/.config/i3.bak
[ -d ~/.config/nvim ] && mv -f ~/.config/nvim ~/.config/nvim.bak
[ -d ~/.config/kitty ] && mv -f ~/.config/kitty ~/.config/kitty.bak

[ -f ~/.profile ] && echo ". \"\$HOME/.dotfiles/.default_background\"" >> ~/.profile

~/.dotfiles/symlink.sh
~/.dotfiles/install.sh
