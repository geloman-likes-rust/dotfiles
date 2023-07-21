#!/bin/sh

## MINICONDA - need this for local installations
#---------------------------------------------------------------------
install_miniconda() {
	[ -d ~/.miniconda ] && return
	echo "Installing miniconda......................................"
	curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
	chmod +x ~/miniconda.sh
	~/miniconda.sh -b -p ~/.miniconda && echo "yes" | ~/.miniconda/bin/conda init
	rm -rdf ~/miniconda.sh
	source ~/.bashrc
}

## TMUX (TERMINAL MULTIPLEXER)
#---------------------------------------------------------------------
install_tmux() {
	[[ -z $(which tmux 2> /dev/null) ]] || return
	echo "Installing tmux..........................................."
	conda install -y -c conda-forge tmux
	source ~/.bashrc
}

## TMUX PLUGIN MANAGER
#---------------------------------------------------------------------
install_tmux_tpm() {
	[ -d ~/.tmux ] && return
	echo "Installing tmux-plugins/tpm......................................"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

## FUZZY FINDER
#---------------------------------------------------------------------
install_fzf() {
	[[ -z $(which fzf 2> /dev/null) ]] || return
	echo "Installing fzf......................................"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	y | ~/.fzf/install
}

## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	[[ -z $(which nvim 2> /dev/null) ]] || return
	echo "Installing neovim......................................"
	cd $HOME && curl -s -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	mv $HOME/nvim-linux64 $HOME/.neovim
	ln -s $HOME/.neovim/bin/nvim $HOME/.local/bin/
}

install_clang() {
	[[ -z $(which gcc 2> /dev/null) ]] || return
	echo "Installing clang for nvim-treesitter"
	conda install -y -c conda-forge clang
}

## RUSTUP, CARGO, RUSTC
#---------------------------------------------------------------------
install_rust() {
	[ -d ~/.cargo ] && return
	echo "Installing rustup, cargo, rustc......................................"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

## NODE VERSION MANAGER
#---------------------------------------------------------------------
install_nvm() {
	[ -d ~/.nvm ] && return
	echo "Installing node-version-manager......................................"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | sh
	nvm install --lts
	nvm install-latest-npm
}

## EXA LS
#---------------------------------------------------------------------
install_exa() {
	[[ -z $(which exa 2> /dev/null) ]] || return
	echo "Installing exa......................................"
	[ -d ~/.exa ] && mkdir ~/.exa
	cd ~/.exa
	curl -sLO https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
	unzip exa-linux-x86_64-v0.10.1.zip
	rm -rdf exa-linux-x86_64-v0.10.1.zip
	ln -s ~/.exa/bin/exa ~/.local/bin/
}

## HTTPIE
#---------------------------------------------------------------------
install_httpie() {
	[[ -z $(which http 2> /dev/null) ]] || return
	echo "Installing httpie......................................"
	curl -sLo ~/.httpie/http https://packages.httpie.io/binaries/linux/http-latest
	chmod +x ~/.httpie/http && ln -s ~/.httpie/http ~/.local/bin/
}

## FD-FIND - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_fd() {
	[[ -z $(which fd 2> /dev/null) ]] || return
	echo "Installing fd-find......................................"
	conda install -y -c conda-forge fd-find
}

## RIPGREP - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_ripgrep() {
	[[ -z $(which rg 2> /dev/null) ]] || return
	echo "Installing ripgrep......................................"
	conda install -y -c conda-forge ripgrep
}

## GIT-DELTA - gitdiff syntax-highlighting
#---------------------------------------------------------------------
install_delta() {
	[[ -z $(which delta 2> /dev/null) ]] || return
	echo "Installing git-delta......................................"
	conda install -y -c conda-forge git-delta
}

## BAT - just like 'cat' but with syntax-highlighting
#---------------------------------------------------------------------
install_bat() {
	[[ -z $(which bat 2> /dev/null) ]] || return
	[ -f ~/.miniconda/bin/bat ] && return
	echo "Installing bat......................................"
	conda install -y -c conda-forge bat
}

install_miniconda
install_tmux
install_fd
install_ripgrep
install_delta
install_bat
install_fzf
install_exa
install_httpie
install_tmux_tpm
install_neovim
install_clang
# install_rust
# install_nvm
