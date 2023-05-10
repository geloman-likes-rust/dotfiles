#!/bin/bash


## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	cd ~/.local/bin
	curl -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
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

## EXA LS
#---------------------------------------------------------------------
install_exa() {
  cd ~/.local/bin
  mkdir exa_ls && cd exa_ls
  curl -LO https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
  unzip exa-linux-x86_64-v0.10.1.zip
  rm -rdf exa-linux-x86_64-v0.10.1.zip
  ln -s ~/.local/bin/exa_ls/bin/exa ~/.local/bin/
}

install_exa
install_neovim
install_tmux_tpm
# install_rust
# install_nvm
