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
ln -s $HOME/.dotfiles/fvi ~/.local/bin/
ln -s $HOME/.dotfiles/git-branch-previewer ~/.local/bin/gco
[ -f ~/.local/bin/slnk ] || ln -s $HOME/.dotfiles/symlink-dotfiles.sh ~/.local/bin/slnk
[ -f ~/.local/bin/ulnk ] ||  ln -s $HOME/.dotfiles/unlink-dotfiles.sh ~/.local/bin/ulnk

for dir in ~/.dotfiles/.config/*; do
  config="$(basename $dir)"
  [ -d ~/.config/$config ] && rm -rdf ~/.config/$config
  ln -s ~/".dotfiles/.config/${config}" ~/.config/"${config}"
done
