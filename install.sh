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
}

## TMUX (TERMINAL MULTIPLEXER)
#---------------------------------------------------------------------
install_tmux() {
	[ -f ~/.miniconda/bin/tmux ] && return
	[ -z "$(which tmux 2> /dev/null)" ] || return
	echo "Installing tmux..........................................."
	~/.miniconda/bin/conda install -y -c conda-forge tmux 2> /dev/null
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
	[ -d ~/.fzf ] && return
	[ -z "$(which fzf 2> /dev/null)" ] || return
	echo "Installing fzf......................................"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	y | ~/.fzf/install
}

## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	[ -d ~/.neovim ] && return
	[ -z "$(which nvim 2> /dev/null)" ] || return
	echo "Installing neovim......................................"
	cd "$HOME" && curl -s -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	mv "$HOME"/nvim-linux64 "$HOME"/.neovim
	ln -sf "$HOME"/.neovim/bin/nvim "$HOME"/.local/bin/
}

## CLANG - nvim-treesitter need this for syntax highlighting
#---------------------------------------------------------------------
install_clang() {
	[ -z "$(which gcc 2> /dev/null)" ] || return
	[ -z "$(which cc 2> /dev/null)" ] || return
	echo "Installing clang for nvim-treesitter"
	~/.miniconda/bin/conda install -y -c conda-forge clang
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
	[ "$0" = "bash" ] && . "$HOME"/.bashrc
	[ "$0" = "zsh" ] && . "$HOME"/.zshrc
	nvm install --lts
	nvm install-latest-npm
}

## EXA LS
#---------------------------------------------------------------------
install_exa() {
	[ -d ~/.exa ] && return
	[ -z "$(which exa 2> /dev/null)" ] || return
	echo "Installing exa......................................"
	[ -d ~/.exa ] || mkdir ~/.exa && cd "$HOME"/.exa || return
	curl -sLO https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
	unzip exa-linux-x86_64-v0.10.1.zip
	rm -rdf exa-linux-x86_64-v0.10.1.zip
	ln -sf ~/.exa/bin/exa ~/.local/bin/
}

## HTTPIE
#---------------------------------------------------------------------
install_httpie() {
	[ -d ~/.httpie ] && return
	[ -z "$(which http 2> /dev/null)" ] || return
	echo "Installing httpie......................................"
	curl --create-dirs -Lo ~/.httpie/http https://packages.httpie.io/binaries/linux/http-latest
	chmod +x ~/.httpie/http && ln -sf ~/.httpie/http ~/.local/bin/
}

## FD-FIND - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_fd() {
	[ -f ~/.miniconda/bin/fd ] && return
	[ -z "$(which fd 2> /dev/null)" ] || return
	echo "Installing fd-find......................................"
	~/.miniconda/bin/conda install -y -c conda-forge fd-find
}

## RIPGREP - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_ripgrep() {
	[ -f ~/.miniconda/bin/rg ] && return
	[ -z "$(which rg 2> /dev/null)" ] || return
	echo "Installing ripgrep......................................"
	~/.miniconda/bin/conda install -y -c conda-forge ripgrep
}

## GIT-DELTA - gitdiff syntax-highlighting
#---------------------------------------------------------------------
install_delta() {
	[ -f ~/.miniconda/bin/delta ] && return
	[ -z "$(which delta 2> /dev/null)" ] || return
	echo "Installing git-delta......................................"
	~/.miniconda/bin/conda install -y -c conda-forge git-delta
}

## BAT - just like 'cat' but with syntax-highlighting
#---------------------------------------------------------------------
install_bat() {
	[ -f ~/.miniconda/bin/bat ] && return
	[ -z "$(which bat 2> /dev/null)" ] || return
	echo "Installing bat......................................"
	~/.miniconda/bin/conda install -y -c conda-forge bat
}

## oh-my-zsh - need this for zsh pretty prompt
install_ohmyzsh() {
	[ -d ~/.oh-my-zsh ] && return
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
install_rust
install_nvm
install_ohmyzsh
