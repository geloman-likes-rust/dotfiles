#!/bin/sh

[ -f "$HOME"/.gitconfig ] && rm -rdf "$HOME"/.gitconfig
ln -s "$HOME"/.dotfiles/.bash_prompt "$HOME"
ln -s "$HOME"/.dotfiles/.zsh_prompt "$HOME"
ln -s "$HOME"/.dotfiles/.gitconfig "$HOME"
ln -s "$HOME"/.dotfiles/.aliasrc "$HOME"
ln -s "$HOME"/.dotfiles/.tmux.conf "$HOME"
[ -f ~/.vimrc ] || ln -s "$HOME"/.dotfiles/.vimrc "$HOME"

[ -d ~/.local ] || mkdir ~/.local
[ -d ~/.local/bin ] || mkdir ~/.local/bin

[ -f ~/.local/bin/slnk ] || ln -s "$HOME"/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -s "$HOME"/.dotfiles/unlink.sh ~/.local/bin/ulnk

[ -d ~/.config ] || mkdir ~/.config
for dir in ~/.dotfiles/.config/*; do
  config=$(basename "$dir")
  [ -d ~/.config/"$config" ] && rm -rdf ~/.config/"$config"
  ln -sf ~/.dotfiles/.config/"$config" ~/.config/"$config"
done
