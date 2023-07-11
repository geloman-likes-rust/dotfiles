#!/bin/sh

[ -f ~/.local/bin/ulnk ] && ulnk
[ -f ~/.local/bin/ulnk ] && unlink ~/.local/bin/ulnk
[ -f ~/.local/bin/slnk ] && unlink ~/.local/bin/slnk
[ -d ~/.local/share/nvim ] && rm -rdf ~/.local/share/nvim
[ -d ~/.fzf ] && rm -rdf ~/.fzf
[ -d ~/.tmux ] && rm -rdf ~/.tmux
[ -d ~/.vim ] && rm -rdf ~/.vim
[ -d ~/.nvm ] && rm -rdf ~/.nvm
[ -d ~/.cargo ] && rm -rdf ~/.cargo
[ -d ~/.rustup ] && rm -rdf ~/.rustup
[ -d ~/.miniconda ] && rm -rdf ~/.miniconda
[ -d ~/.conda ] && rm -rdf ~/.conda
[ -d ~/.dotfiles ] && rm -rdf ~/.dotfiles
