#!/bin/sh

# UNLINK ALL SYMLINKS
[ -f ~/.local/bin/ulnk ] && ulnk
[ -f ~/.local/bin/ulnk ] && unlink ~/.local/bin/ulnk
[ -f ~/.local/bin/slnk ] && unlink ~/.local/bin/slnk
[ -f ~/.local/bin/nvim ] && unlink ~/.local/bin/nvim

# GETTING BACK TO NORMAL
mv ~/.vimrc.bak ~/.vimrc
mv ~/.zshrc.bak ~/.zshrc
mv ~/.bashrc.bak ~/.bashrc
mv ~/.inputrc.bak ~/.inputrc
mv ~/.gitconfig.bak ~/.gitconfig
mv ~/.config/i3.bak ~/.config/i3
mv ~/.config/nvim.bak ~/.config/nvim
mv ~/.config/kitty.bak ~/.config/kitty
[ -d ~/.dotfiles ] && rm -rdf ~/.dotfiles

# REMOVE ALL DEPENDENCIES
[ -d ~/.exa ] && unlink ~/.local/bin/exa && rm -rdf ~/.exa
[ -d ~/.httpie ] && unlink ~/.local/bin/http && rm -rdf ~/.httpie
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
[ -d ~/.miniconda ] && rm -rdf ~/.miniconda
[ -d ~/.conda ] && rm -rdf ~/.conda
