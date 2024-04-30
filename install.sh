#!/bin/sh

## TMUX PLUGIN MANAGER
#---------------------------------------------------------------------
install_tmux_tpm() {
	[ -d ~/.tmux ] && return
	echo "Installing tmux-plugins/tpm......................................"
	git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
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
	tar xzf nvim-linux64.tar.gz -C "$HOME"/.neovim
	rm -rdf nvim-linux64.tar.gz
	ln -sf "$HOME"/.neovim/bin/nvim "$HOME"/.local/bin/
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
	# nvm install --lts
	# nvm install-latest-npm
}

## EXA LS
#---------------------------------------------------------------------
install_exa() {
	[ -n "$(command -v exa)" ] && return
	echo "Installing exa......................................"
    ~/.cargo/bin/cargo install exa
}

## FD-FIND - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_fd() {
	[ -n "$(command -v fd)" ] && return
	echo "Installing fd-find......................................"
    ~/.cargo/bin/cargo install fd-find
}

## RIPGREP - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_ripgrep() {
	[ -n "$(command -v rg)" ] && return
	echo "Installing ripgrep......................................"
    ~/.cargo/bin/cargo install ripgrep
}

## GIT-DELTA - gitdiff syntax-highlighting
#---------------------------------------------------------------------
install_delta() {
	[ -n "$(command -v delta)" ] && return
	echo "Installing git-delta......................................"
    ~/.cargo/bin/cargo install git-delta
}

## BAT - just like 'cat' but with syntax-highlighting
#---------------------------------------------------------------------
install_bat() {
	[ -n "$(command -v bat)" ] && return
	echo "Installing bat......................................"
    ~/.cargo/bin/cargo install bat
}

## oh-my-zsh - need this for zsh pretty prompt
install_ohmyzsh() {
	[ -d ~/.oh-my-zsh ] && return
	[ -z "$(command -v curl)" ] && return
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_lua_language_server() {
    [ -n "$(command -v lua-language-server)" ] && return
    release_tag="https://github.com/LuaLS/lua-language-server/releases/download/3.7.4/lua-language-server-3.7.4-linux-x64.tar.gz"
	echo "Installing lua-language-server......................................"
    curl -Lo ~/.language-servers/packages/lua-language-server/lua_ls.tar.gz --create-dirs "$release_tag"
    tar xzf ./lua_ls.tar.gz -C ~/.language-servers/packages/lua-language-server
    mkdir -p ~/.language-servers/bin
    ln -sf ~/.language-servers/packages/lua-language-server/bin/lua-language-server ~/.language-servers/bin/
}

install_omnisharp_roslyn() {
    [ -n "$(command -v OmniSharp)" ] && return
    release_tag="https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.11/omnisharp-linux-x64-net6.0.tar.gz"
	echo "Installing omnisharp-roslyn......................................"
    curl -Lo ~/.language-servers/packages/omnisharp-roslyn/bin/roslyn.tar.gz --create-dirs "$release_tag"
    tar xzf ./roslyn.tar.gz -C ~/.language-servers/packages/omnisharp-roslyn/bin
    mkdir -p ~/.language-servers/bin
    ln -sf ~/.language-servers/packages/omnisharp-roslyn/bin/OmniSharp ~/.language-servers/bin/
}

install_neovim
install_fzf
install_rust
install_fd
install_ripgrep
install_delta
install_bat
install_exa
install_tmux_tpm
# install_lua_language_server
# install_omnisharp_roslyn
# install_ohmyzsh
# install_nvm

[ -z "$(command -v tar)" ] && printf "\033[0;91mtar\033[0m was not installed, u need \033[0;91mtar\033[0m to install nvim\n"
[ -z "$(command -v unzip)" ] && printf "\033[0;91munzip\033[0m was not installed, u need \033[0;91munzip\033[0m to install exa\n"
[ -z "$(command -v git)" ] && printf "\033[0;91mgit\033[0m was not installed, u need \033[0;91mgit\033[0m to install the required dependencies\n"
[ -z "$(command -v curl)" ] && printf "\033[0;91mcurl\033[0m was not installed, u need \033[0;91mcurl\033[0m to install the required dependencies\n"
