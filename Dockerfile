FROM alpine:latest AS base
RUN apk add zsh unzip tar
RUN addgroup --gid 1000 geloman
RUN adduser -u 1000 -g geloman -G geloman -D geloman
ENTRYPOINT ["zsh"]

# FROM base AS setup
# USER geloman
# WORKDIR /home/geloman
# COPY . .
# RUN ./install.sh

# FROM setup AS final
# USER geloman
# WORKDIR /home/geloman
# ENTRYPOINT ["zsh"]
