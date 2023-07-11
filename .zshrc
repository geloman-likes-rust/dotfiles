export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

set -o vi
EDITOR="nvim"

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^b "randbg\n"
bindkey -s ^q "switch_shell\n"

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.zsh_profile ] && . ~/.zsh_profile
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH


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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## source cargo 
#-----------------------------------------------------
[ -d ~/.cargo ] && PATH=$PATH:$HOME/.cargo/bin && export PATH
