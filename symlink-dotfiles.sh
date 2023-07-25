#!/bin/sh

[ -f $HOME/.gitconfig ] && rm -rdf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.prompt $HOME
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.bash_aliases $HOME
ln -s $HOME/.dotfiles/.tmux.conf $HOME
[ -f ~/.vimrc ] || ln -s $HOME/.dotfiles/.vimrc $HOME

[ -d ~/.local ] || mkdir ~/.local && [ -d ~/.local/bin ] || mkdir ~/.local/bin
for x in ~/.dotfiles/handy-scripts/*; do
  ln -s $x ~/.local/bin/
done

[ -f ~/.local/bin/slnk ] || ln -s $HOME/.dotfiles/symlink-dotfiles.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -s $HOME/.dotfiles/unlink-dotfiles.sh ~/.local/bin/ulnk

[ -d ~/.config ] || mkdir ~/.config
for dir in ~/.dotfiles/.config/*; do
  config=$(basename $dir)
  [ -d ~/.config/$config ] && rm -rdf ~/.config/$config
  ln -s ~/.dotfiles/.config/$config ~/.config/$config
done
