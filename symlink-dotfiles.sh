#!/bin/bash

rm -rdf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.bash_aliases $HOME
ln -s $HOME/.dotfiles/.tmux.conf $HOME

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  ln -s ~/".dotfiles/.config/${config}" ~/.config/"${config}"
done
