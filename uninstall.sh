#!/bin/sh

# UNLINK ALL SYMLINKS
[ -f ~/.local/bin/ulnk ] && ulnk
find ~/.local/bin -maxdepth 1 -type l \
    | xargs -I {} sh -c 'unlink {}'

# REMOVE ALL DEPENDENCIES
[ -d ~/.neovim ] && rm -rdf ~/.neovim
[ -d ~/.local/share/nvim ] && rm -rdf ~/.local/share/nvim
[ -d ~/.fzf ] && rm -rdf ~/.fzf
[ -f ~/.fzf.bash ] && rm -rdf ~/.fzf.bash
[ -f ~/.fzf.zsh ] && rm -rdf ~/.fzf.zsh
[ -d ~/.tmux ] && rm -rdf ~/.tmux
[ -d ~/.vim ] && rm -rdf ~/.vim
[ -d ~/.nvm ] && rm -rdf ~/.nvm
[ -d ~/.cargo ] && rm -rdf ~/.cargo
[ -d ~/.rustup ] && rm -rdf ~/.rustup
[ -d ~/.language-servers/bin ] && rm -rdf ~/.language-servers/bin

# REMOVE MY DOTFILES
[ -d ~/.dotfiles ] && rm -rdf ~/.dotfiles
