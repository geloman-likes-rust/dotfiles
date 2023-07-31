#!/bin/sh

unlink ~/.gitconfig
unlink ~/.aliasrc
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.bash_prompt
unlink ~/.zsh_prompt

for dir in ~/.dotfiles/.config/*; do
  config=$(basename "$dir")
  unlink ~/.config/"$config"
done
