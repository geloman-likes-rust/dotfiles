EDITOR="nvim"
[ -f /etc/bashrc ] && . /etc/bashrc
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -d ~/.local/bin ] && PATH=$PATH:$HOME/.local/bin && export PATH
[ -d ~/.miniconda/bin ] && PATH=$PATH:$HOME/.miniconda/bin && export PATH
[ -d ~/.fzf/bin ] && PATH=$PATH:$HOME/.fzf/bin && export PATH

## synth-shell-prompt.sh
##-----------------------------------------------------
[ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ] && source ~/.config/synth-shell/synth-shell-prompt.sh

## opens fzf when ctrl+f key was press and creates a tmux session based on the selected basename
#-----------------------------------------------------
bind -x '"\C-f": tmux-sessionizer'

## change background scripts
bind -x '"\C-b": randbg'
