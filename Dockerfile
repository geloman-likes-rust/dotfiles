FROM ubuntu:latest AS base
RUN apt update -y && apt upgrade -y
RUN apt install -y git zsh eza bat unzip tar tmux neovim fzf git-delta fd-find ripgrep neofetch gcc
RUN [ -n "$(command -v batcat)" ] && ln -s "$(command -v batcat)" /usr/bin/bat
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --shell /usr/bin/zsh geloman

FROM base AS setup
USER geloman
WORKDIR /home/geloman
COPY --chown=geloman:geloman nvim/ .config/nvim
RUN nvim --headless "+Lazy! restore" +qa
COPY --chown=geloman:geloman .gitconfig tmux/.tmux.conf zsh/.zshrc .
COPY --chown=geloman:geloman . .dotfiles/

FROM setup AS final
USER geloman
WORKDIR /home/geloman
ENTRYPOINT ["zsh"]
