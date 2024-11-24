FROM alpine:latest AS base
RUN apk add zsh unzip tar
RUN useradd --create-home --groups sudo --shell /usr/bin/zsh geloman \
	&& echo "geloman ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/geloman \
	&& chmod 0440 /etc/sudoers.d/geloman

# FROM base AS setup
# USER geloman
# WORKDIR /home/geloman
# COPY . .
# RUN ./install.sh

# FROM setup AS final
# USER geloman
# WORKDIR /home/geloman
# ENTRYPOINT ["zsh"]
