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
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	mv "$HOME"/nvim-linux64 "$HOME"/.neovim
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
    release_tag="https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip"
	[ -n "$(command -v exa)" ] && return
	[ -z "$(command -v curl)" ] && return
	[ -z "$(command -v unzip)" ] && return
	echo "Installing exa......................................"
    curl -Lo ~/.exa/exa.zip --create-dirs "$release_tag"
	cd ~/.exa && unzip ./exa.zip
	ln -sf ~/.exa/bin/exa ~/.local/bin/
}

## FD-FIND - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_fd() {
    release_tag="https://github.com/sharkdp/fd/releases/download/v9.0.0/fd-v9.0.0-x86_64-unknown-linux-musl.tar.gz"
	[ -n "$(command -v fd)" ] && return
	echo "Installing fd-find......................................"
    curl -Lo ~/.fd_find/fd_find.tar.gz --create-dirs "$release_tag"
    cd ~/.fd_find && tar xzvf ./fd_find.tar.gz
    mv ~/.fd_find/$(command ls ~/.fd_find | grep -v "tar.gz") ~/.fd_find/bin
    ln -sf ~/.fd_find/bin/fd ~/.local/bin/
}

## RIPGREP - need this for telescope live-grep & grep-string
#---------------------------------------------------------------------
install_ripgrep() {
    release_tag="https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep-14.1.0-x86_64-unknown-linux-musl.tar.gz"
	[ -n "$(command -v rg)" ] && return
	echo "Installing ripgrep......................................"
    curl -Lo ~/.ripgrep/ripgrep.tar.gz --create-dirs "$release_tag"
    cd ~/.ripgrep && tar xzvf ./ripgrep.tar.gz
    mv ~/.ripgrep/$(command ls ~/.ripgrep | grep -v "tar.gz") ~/.ripgrep/bin
    ln -sf ~/.ripgrep/bin/rg ~/.local/bin/
}

## GIT-DELTA - gitdiff syntax-highlighting
#---------------------------------------------------------------------
install_delta() {
    release_tag="https://github.com/dandavison/delta/releases/download/0.16.5/delta-0.16.5-x86_64-unknown-linux-musl.tar.gz"
	[ -n "$(command -v delta)" ] && return
	echo "Installing git-delta......................................"
    curl -Lo ~/.git-delta/delta.tar.gz --create-dirs "$release_tag"
    cd ~/.git-delta && tar xzvf ./delta.tar.gz
    mv ~/.git-delta/$(command ls ~/.git-delta | grep -v "tar.gz") ~/.git-delta/bin
    ln -sf ~/.git-delta/bin/delta ~/.local/bin/
}

## BAT - just like 'cat' but with syntax-highlighting
#---------------------------------------------------------------------
install_bat() {
    realease_tag="https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
	[ -n "$(command -v bat)" ] && return
	echo "Installing bat......................................"
    curl -Lo ~/.batcat/bat.tar.gz --create-dirs "$release_tag"
    cd ~/.batcat && tar xzvf ./bat.tar.gz
    mv ~/.batcat/$(command ls ~/.batcat | grep -v "tar.gz") ~/.batcat/bin
    ln -sf ~/.batcat/bin/bat ~/.local/bin/
}

## oh-my-zsh - need this for zsh pretty prompt
install_ohmyzsh() {
	[ -d ~/.oh-my-zsh ] && return
	[ -z "$(command -v curl)" ] && return
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_lua_language_server() {
    [-z "$(command -v lua-language-server)" ] && return
    release_tag="https://github.com/LuaLS/lua-language-server/releases/download/3.7.4/lua-language-server-3.7.4-linux-x64.tar.gz"
	echo "Installing lua-language-server......................................"
    curl -Lo ~/.language-servers/packages/lua-language-server/lua_ls.tar.gz --create-dirs "$release_tag"
    cd ~/.language-servers/packages/lua-language-server && tar xzvf ./lua_ls.tar.gz
    [ -d ~/.language-servers/bin ] || mkdir ~/.language-servers/bin
    ln -sf ~/.language-servers/packages/lua-language-server/bin/lua-language-server ~/.language-servers/bin/
}

install_omnisharp_roslyn() {
    [-z "$(command -v OmniSharp)" ] && return
    release_tag="https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.11/omnisharp-linux-x64-net6.0.tar.gz"
	echo "Installing omnisharp-roslyn......................................"
    curl -Lo ~/.language-servers/packages/omnisharp-roslyn/bin/roslyn.tar.gz --create-dirs "$release_tag"
    cd ~/.language-servers/packages/omnisharp-roslyn/bin && tar xzvf ./roslyn.tar.gz
    [ -d ~/.language-servers/bin ] || mkdir ~/.language-servers/bin
    ln -sf ~/.language-servers/packages/omnisharp-roslyn/bin/OmniSharp ~/.language-servers/bin/
}

install_fd
install_ripgrep
install_delta
install_bat
install_fzf
install_exa
install_tmux_tpm
install_neovim
install_lua_language_server
# install_omnisharp_roslyn
# install_ohmyzsh
# install_nvm
# install_rust

[ -z "$(command -v tar)" ] && printf "\033[0;91mtar\033[0m was not installed, u need \033[0;91mtar\033[0m to install nvim\n"
[ -z "$(command -v unzip)" ] && printf "\033[0;91munzip\033[0m was not installed, u need \033[0;91munzip\033[0m to install exa\n"
[ -z "$(command -v git)" ] && printf "\033[0;91mgit\033[0m was not installed, u need \033[0;91mgit\033[0m to install the required dependencies\n"
[ -z "$(command -v curl)" ] && printf "\033[0;91mcurl\033[0m was not installed, u need \033[0;91mcurl\033[0m to install the required dependencies\n"
