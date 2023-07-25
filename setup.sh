#!/bin/sh

[ -d ~/.personal/wallpaper ] || git clone https://github.com/geloman-likes-rust/desktop-wallpaper ~/.personal/wallpaper

[ -d ~/.local ] || mkdir ~/.local && [ -d ~/.local/bin ] || mkdir ~/.local/bin
[ -d ~/.config ] || mkdir ~/.config

cat ~/.dotfiles/.bashrc > ~/.bashrc
cat ~/.dotfiles/.zshrc > ~/.zshrc

[ -f ~/.profile ] && echo -e ". \"\$HOME/.dotfiles/.default_background\"" >> ~/.profile

~/.dotfiles/install.sh
[ -f ~/.local/bin/slnk ] || ~/.dotfiles/symlink-dotfiles.sh
