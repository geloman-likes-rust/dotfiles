#!/bin/sh

unlink ~/.gitconfig
unlink ~/.bash_aliases
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.local/bin/tmux-sessionizer
unlink ~/.local/bin/setbg
unlink ~/.local/bin/randbg
unlink ~/.local/bin/switch_shell
unlink ~/.local/bin/fvi
unlink ~/.local/bin/gco
unlink ~/.local/bin/se
unlink ~/.local/bin/dirty

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  unlink ~/.config/"${config}"
done
