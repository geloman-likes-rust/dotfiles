#!/bin/sh

[ -f "$HOME"/.gitconfig ] && rm -rdf "$HOME"/.gitconfig
ln -sf "$HOME"/.dotfiles/.bash_prompt "$HOME"
ln -sf "$HOME"/.dotfiles/.zsh_prompt "$HOME"
ln -sf "$HOME"/.dotfiles/.gitconfig "$HOME"
ln -sf "$HOME"/.dotfiles/.aliasrc "$HOME"
ln -sf "$HOME"/.dotfiles/.tmux.conf "$HOME"
[ -f ~/.vimrc ] || ln -sf "$HOME"/.dotfiles/.vimrc "$HOME"

[ -d ~/.local ] || mkdir ~/.local
[ -d ~/.local/bin ] || mkdir ~/.local/bin

[ -f ~/.local/bin/slnk ] || ln -sf "$HOME"/.dotfiles/symlink.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -sf "$HOME"/.dotfiles/unlink.sh ~/.local/bin/ulnk

[ -d ~/.config ] || mkdir ~/.config
for dir in ~/.dotfiles/.config/*; do
  config=$(basename "$dir")
  [ -d ~/.config/"$config" ] && rm -rdf ~/.config/"$config"
  ln -sf ~/.dotfiles/.config/"$config" ~/.config/"$config"
done
