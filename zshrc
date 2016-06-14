# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

. ~/.zsh/aliases
. ~/.zsh/config
. ~/.zsh/paths
. ~/.zsh/rbenv
# . ~/.zsh/pyenv
#. ~/.zsh/docker

fpath=(/usr/local/share/zsh-completions $fpath)
compinit
