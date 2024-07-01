FROM ubuntu:latest

RUN apt-get update \
        && apt-get install -y \
        sudo git fontconfig tar wget rustup gcc unzip curl \
        zsh tmux neovim fzf git-delta eza bat ripgrep fd-find neofetch

ARG USERNAME=user
RUN useradd --create-home --groups sudo --shell /usr/bin/zsh ${USERNAME} \
	&& echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USERNAME} \
	&& chmod 0440 /etc/sudoers.d/${USERNAME}

USER ${USERNAME}

WORKDIR /home/${USERNAME}

COPY . .dotfiles

RUN ./.dotfiles/setup.sh

CMD ["zsh"]
