#!/bin/sh

rm -rdf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.bash_aliases $HOME
ln -s $HOME/.dotfiles/.tmux.conf $HOME
ln -s $HOME/.dotfiles/.vimrc $HOME
ln -s $HOME/.dotfiles/tmux-sessionizer ~/.local/bin/
ln -s $HOME/.dotfiles/setbg ~/.local/bin/
ln -s $HOME/.dotfiles/randbg ~/.local/bin/
ln -s $HOME/.dotfiles/switch_shell ~/.local/bin/

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  ln -s ~/".dotfiles/.config/${config}" ~/.config/"${config}"
done
