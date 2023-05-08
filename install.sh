#!/bin/bash


## NEOVIM STABLE - LATEST
#---------------------------------------------------------------------
install_neovim() {
	curl -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	mv nvim-linux64 ~/.local/bin/
	ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin
}

## TMUX PLUGIN MANAGER
#---------------------------------------------------------------------
install_tmux_tpm() {
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

## RUSTUP, CARGO, RUSTC
#---------------------------------------------------------------------
install_rust() {
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

## NODE VERSION MANAGER
#---------------------------------------------------------------------
install_nvm() {
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	nvm install --lts
	nvm install-latest-npm
}

install_neovim
install_tmux_tpm
install_rust
install_nvm
