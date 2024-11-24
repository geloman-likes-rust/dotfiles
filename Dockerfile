FROM alpine:latest AS base
RUN apk add zsh unzip tar
RUN addgroup --gid 1000 geloman
RUN adduser --gecos geloman --uid 1000 --gid 1000 --disabled-password geloman

# FROM base AS setup
# USER geloman
# WORKDIR /home/geloman
# COPY . .
# RUN ./install.sh

# FROM setup AS final
# USER geloman
# WORKDIR /home/geloman
# ENTRYPOINT ["zsh"]
