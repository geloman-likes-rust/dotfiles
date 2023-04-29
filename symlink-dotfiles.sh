#!/bin/bash

dotfiles=(
  .bash_aliases
  .tmux.conf
)

for dotfile in "${dotfiles[@]}"; do
  ln -s ~/".dotfiles/$dotfile" ~/"$dotfile"
done

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  ln -s ~/".dotfiles/.config/${config}" ~/.config/"${config}"
done
