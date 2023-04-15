#!/bin/bash

dotfiles=(
  .config
  .bash_aliases
  .tmux.conf
)

for dotfile in "${dotfiles[@]}"; do
  ln -s ~/".dotfiles/$dotfile" ~/"$dotfile"
done
