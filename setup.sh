#!/bin/sh

[ -f ~/.bashrc ] && echo -e export EDITOR="nvim" >> ~/.bashrc
[ -f ~/.zshrc ] && echo -e export EDITOR="nvim" >> ~/.zshrc
[ -f ~/.profile ] && echo -e ". \"\$HOME/.dotfiles/.default_background\"" >> ~/.profile

if [ -f ~/.bashrc ]; then
cat <<'EOF' >> ~/.bashrc

## synth-shell-prompt.sh
##-----------------------------------------------------
[ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ] && source ~/.config/synth-shell/synth-shell-prompt.sh

## opens fzf when ctrl+f key was press and creates a tmux session based on the selected basename
#-----------------------------------------------------
bind -x '"\C-f": tmux-sessionizer'

EOF
fi

~/.dotfiles/install.sh
~/.dotfiles/symlink-dotfiles.sh

source ~/.bashrc
