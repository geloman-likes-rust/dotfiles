#!/bin/bash

dotfiles=(
  .bash_aliases
  .tmux.conf
)

for dotfile in "${dotfiles[@]}"; do
  ln -s ~/".dotfiles/$dotfile" ~/"$dotfile"
done

configs=(
  nvim
  synth-shell
  neofetch
)

for config in "${configs[@]}"; do
  ln -s ~/".dotfiles/.config/$config" ~/".config/$config"
done
