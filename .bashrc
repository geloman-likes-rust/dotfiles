set -o vi
EDITOR="nvim"
[ -f /etc/bashrc ] && . /etc/bashrc
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH

## opens fzf when ctrl+f key was press and creates a tmux session based on the selected basename
#-----------------------------------------------------
bind -x '"\C-f": tmux-sessionizer'

## change background scripts
#-----------------------------------------------------
bind -x '"\C-b": randbg'

## synth-shell-prompt.sh
##-----------------------------------------------------
[ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ] && source ~/.config/synth-shell/synth-shell-prompt.sh

## source nvm
#-----------------------------------------------------
[ -d $HOME/.nvm ] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## source miniconda
#-----------------------------------------------------
[ -d ~/.miniconda/bin ] && PATH=$PATH:$HOME/.miniconda/bin && export PATH

## source fzf 
#-----------------------------------------------------
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

## source cargo 
#-----------------------------------------------------
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin && export PATH
