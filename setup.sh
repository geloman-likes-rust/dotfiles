#!/bin/sh

[ -d ~/.personal/wallpaper ] || git clone --depth 1 https://github.com/geloman-likes-rust/desktop-wallpaper ~/.personal/wallpaper

mkdir -p ~/.fonts
mkdir -p ~/.config
mkdir -p ~/.local/bin

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
[ -d ~/.config/i3status ] && mv -f ~/.config/i3status ~/.config/i3status.bak
[ -d ~/.config/nvim ] && mv -f ~/.config/nvim ~/.config/nvim.bak
[ -d ~/.config/kitty ] && mv -f ~/.config/kitty ~/.config/kitty.bak
[ -d ~/.config/alacritty ] && mv -f ~/.config/alacritty ~/.config/alacritty.bak
[ -d ~/.config/wofi ] && mv -f ~/.config/wofi ~/.config/wofi.bak
[ -d ~/.config/rofi ] && mv -f ~/.config/rofi ~/.config/rofi.bak
[ -d ~/.config/hypr ] && mv -f ~/.config/hypr ~/.config/hypr.bak
[ -d ~/.config/picom ] && mv -f ~/.config/picom ~/.config/picom.bak
[ -d ~/.config/dunst ] && mv -f ~/.config/dunst ~/.config/dunst.bak
[ -d ~/.config/waybar ] && mv -f ~/.config/waybar ~/.config/waybar.bak
[ -d ~/.config/Code/User/snippets ] mv -f ~/.config/Code/User/snippets ~/.config/Code/User/snippets.bak
[ -f ~/.config/Code/User/settings.json ] && mv -f ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.bak
[ -f ~/.config/Code/User/keybindings.json ] && mv -f ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json.bak

[ -z "$(fc-list | grep "Hack Nerd Font")" ] && cp ~/.dotfiles/fonts/hack-nerd-font.ttf ~/.fonts && echo "updating font cache................" && fc-cache -fv
[ -f ~/.profile ] && echo ". \"\$HOME/.dotfiles/.default_background\"" >> ~/.profile

~/.dotfiles/symlink.sh
~/.dotfiles/install.sh
