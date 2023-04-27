#!/bin/bash

install_neovim() {
	curl -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	mv nvim-linux64 ~/.local/bin
	ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin
}

install_neovim
