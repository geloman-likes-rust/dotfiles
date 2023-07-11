#!/bin/sh

rm -rdf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.bash_aliases $HOME
ln -s $HOME/.dotfiles/.tmux.conf $HOME
ln -s $HOME/.dotfiles/.vimrc $HOME
[ -d ~/.local/bin ] || mkdir ~/.local && mkdir ~/.local/bin
ln -s $HOME/.dotfiles/handy-scripts/tmux-sessionizer ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/setbg ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/randbg ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/switch_shell ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/fvi ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/git-branch-previewer ~/.local/bin/gco
ln -s $HOME/.dotfiles/handy-scripts/se ~/.local/bin/
ln -s $HOME/.dotfiles/handy-scripts/dirty ~/.local/bin/
[ -f ~/.local/bin/slnk ] || ln -s $HOME/.dotfiles/symlink-dotfiles.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -s $HOME/.dotfiles/unlink-dotfiles.sh ~/.local/bin/ulnk

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  [ -d ~/.config/$config ] && rm -rdf ~/.config/$config
  ln -s ~/".dotfiles/.config/${config}" ~/.config/"${config}"
done
