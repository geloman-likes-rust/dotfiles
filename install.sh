#!/bin/sh

## MINICONDA - need this for local installations
#---------------------------------------------------------------------
install_miniconda() {
	[ -d ~/.miniconda ] && return
	[ -z "$(command -v curl)" ] && return
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
	[ -n "$(command -v tmux)" ] && return
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
	[ -n "$(command -v fzf)" ] && return
	echo "Installing fzf......................................"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	echo "y" | ~/.fzf/install
}

## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	[ -d ~/.neovim ] && return
	[ -n "$(command -v nvim)" ] && return
	[ -z "$(command -v curl)" ] && return
	[ -z "$(command -v tar)" ] && return
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
	[ -n "$(command -v cc)" ] && return
	[ -n "$(command -v gcc)" ] && return
	echo "Installing clang for nvim-treesitter"
	~/.miniconda/bin/conda install -y -c conda-forge clang
}

## RUSTUP, CARGO, RUSTC
#---------------------------------------------------------------------
install_rust() {
	[ -d ~/.cargo ] && return
	[ -z "$(command -v curl)" ] && return
	echo "Installing rustup, cargo, rustc......................................"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

## NODE VERSION MANAGER
#---------------------------------------------------------------------
install_nvm() {
	[ -d ~/.nvm ] && return
	[ -z "$(command -v curl)" ] && return
	echo "Installing node-version-manager......................................"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | sh
	[ -s "$HOME/.nvim/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"  # This loads nvm
	nvm install --lts
	nvm install-latest-npm
}

## EXA LS
#---------------------------------------------------------------------
install_exa() {
	[ -d ~/.exa ] && return
	[ -n "$(command -v exa)" ] && return
	[ -z "$(command -v curl)" ] && return
	[ -z "$(command -v unzip)" ] && return
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
	[ -n "$(command -v http)" ] && return
	[ -z "$(command -v curl)" ] && return
	echo "Installing httpie......................................"
	curl --create-dirs -Lo ~/.httpie/http https://packages.httpie.io/binaries/linux/http-latest
	chmod +x ~/.httpie/http && ln -sf ~/.httpie/http ~/.local/bin/
}

## FD-FIND - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_fd() {
	[ -f ~/.miniconda/bin/fd ] && return
	[ -n "$(command -v fd)" ] && return
	echo "Installing fd-find......................................"
	~/.miniconda/bin/conda install -y -c conda-forge fd-find
}

## RIPGREP - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_ripgrep() {
	[ -f ~/.miniconda/bin/rg ] && return
	[ -n "$(command -v rg)" ] && return
	echo "Installing ripgrep......................................"
	~/.miniconda/bin/conda install -y -c conda-forge ripgrep
}

## GIT-DELTA - gitdiff syntax-highlighting
#---------------------------------------------------------------------
install_delta() {
	[ -f ~/.miniconda/bin/delta ] && return
	[ -n "$(command -v delta)" ] && return
	echo "Installing git-delta......................................"
	~/.miniconda/bin/conda install -y -c conda-forge git-delta
}

## BAT - just like 'cat' but with syntax-highlighting
#---------------------------------------------------------------------
install_bat() {
	[ -f ~/.miniconda/bin/bat ] && return
	[ -n "$(command -v bat)" ] && return
	echo "Installing bat......................................"
	~/.miniconda/bin/conda install -y -c conda-forge bat
}

## oh-my-zsh - need this for zsh pretty prompt
install_ohmyzsh() {
	[ -d ~/.oh-my-zsh ] && return
	[ -z "$(command -v curl)" ] && return
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
install_ohmyzsh
install_nvm
# install_rust

[ -z "$(command -v tar)" ] && printf "\033[0;91mtar\033[0m was not installed, u need \033[0;91mtar\033[0m to install nvim\n"
[ -z "$(command -v unzip)" ] && printf "\033[0;91munzip\033[0m was not installed, u need \033[0;91munzip\033[0m to install exa\n"
[ -z "$(command -v git)" ] && printf "\033[0;91mgit\033[0m was not installed, u need \033[0;91mgit\033[0m to install the required dependencies\n"
[ -z "$(command -v curl)" ] && printf "\033[0;91mcurl\033[0m was not installed, u need \033[0;91mcurl\033[0m to install the required dependencies\n"
