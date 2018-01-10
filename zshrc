# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

. ~/.zsh/aliases
. ~/.zsh/config

if [[ -z $TMUX ]]; then
  . ~/.zsh/paths
fi

fpath=(/usr/local/share/zsh-completions $fpath)
compinit
