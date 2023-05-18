#!/bin/bash

BASHRC=$HOME/.bashrc
SOURCE_SYNTHSHELL='if [ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then\n	source ~/.config/synth-shell/synth-shell-prompt.sh\nfi'

bash ~/.dotfiles/install.sh
bash ~/.dotfiles/symlink-dotfiles.sh

echo -e '\n' >> $BASHRC
echo "## synth-shell-prompt.sh" >> $BASHRC
echo "##-----------------------------------------------------" >> $BASHRC
echo -e $SOURCE_SYNTHSHELL >> $BASHRC

source ~/.bashrc
