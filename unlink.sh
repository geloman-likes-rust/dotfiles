#!/bin/sh

unlink ~/.gitconfig
unlink ~/.aliasrc
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.bash_prompt
unlink ~/.zsh_prompt

for script in ~/.dotfiles/handy-scripts/*; do
  file=$(basename "$script")
  unlink ~/.local/bin/"$file"
done

for dir in ~/.dotfiles/.config/*; do
  config=$(basename "$dir")
  unlink ~/.config/"$config"
done
