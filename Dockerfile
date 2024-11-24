FROM ubuntu:latest AS base
RUN apt-get update \
        && apt-get install -y \
        sudo git fontconfig tar wget rustup gcc unzip curl \
        zsh tmux neovim fzf git-delta eza bat ripgrep fd-find neofetch \
        && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --groups sudo --shell /usr/bin/zsh geloman \
	&& echo "geloman ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/geloman \
	&& chmod 0440 /etc/sudoers.d/geloman

FROM base AS final
USER geloman
WORKDIR /home/geloman
COPY . .dotfiles
RUN ./.dotfiles/setup.sh
ENTRYPOINT ["zsh"]
