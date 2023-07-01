#!/bin/bash


## TMUX (TERMINAL MULTIPLEXER)
#---------------------------------------------------------------------
install_tmux() {
	echo "Installing miniconda......................................"
	curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
	chmod +x miniconda.sh
	bash ~/miniconda.sh -b -p ~/.miniconda && echo "yes" | ~/.miniconda/bin/conda init
	rm -rdf miniconda.sh
	echo export PATH="$HOME/.miniconda/bin:$PATH" >> ~/.bashrc
	source ~/.bashrc
	echo "Installing tmux..........................................."
	conda install -y -c conda-forge tmux
	source ~/.bashrc
}

## TMUX PLUGIN MANAGER
#---------------------------------------------------------------------
install_tmux_tpm() {
	echo "Installing tmux-plugins/tpm......................................"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

## FUZZY FINDER
#---------------------------------------------------------------------
install_fzf() {
	echo "Installing fzf......................................"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	y | ~/.fzf/install
}

## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	echo "Installing neovim......................................"
	cd ~/.local/bin
	curl -s -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin
}

install_clang() {
	echo "Installing clang for nvim-treesitter"
	conda install -y -c conda-forge clang
}

## RUSTUP, CARGO, RUSTC
#---------------------------------------------------------------------
install_rust() {
	echo "Installing rustup, cargo, rustc......................................"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

## NODE VERSION MANAGER
#---------------------------------------------------------------------
install_nvm() {
	echo "Installing node-version-manager......................................"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	nvm install --lts
	nvm install-latest-npm
}

## EXA LS
#---------------------------------------------------------------------
install_exa() {
	echo "Installing exa......................................"
	cd ~/.local/bin
	mkdir exa_ls && cd exa_ls
	curl -sLO https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
	unzip exa-linux-x86_64-v0.10.1.zip
	rm -rdf exa-linux-x86_64-v0.10.1.zip
	ln -s ~/.local/bin/exa_ls/bin/exa ~/.local/bin/
}

## HTTPIE
#---------------------------------------------------------------------
install_httpie() {
	echo "Installing httpie......................................"
	cd ~/.local/bin
	curl -sLo http https://packages.httpie.io/binaries/linux/http-latest
	chmod +x http
}

install_fd() {
	conda install -y -c conda-forge fd-find
}

install_ripgrep() {
	echo "Installing ripgrep......................................"
	conda install -y -c conda-forge ripgrep
}

install_tmux
install_tmux_tpm
install_fzf
install_neovim
install_exa
install_httpie
install_fd
install_ripgrep
# install_clang
# install_rust
# install_nvm
