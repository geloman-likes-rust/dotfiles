#!/bin/sh

unlink ~/.gitconfig
unlink ~/.bash_aliases
unlink ~/.tmux.conf
unlink ~/.vimrc

for script in ~/.dotfiles/handy-scripts/*; do
  file=$(basename $script)
  unlink ~/.local/bin/$file
done

for dir in ~/.dotfiles/.config/*; do
  config=$(basename $dir)
  unlink ~/.config/$config
done
