# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
    compinit

    # ZPrezto Fixes
    alias rm='nocorrect rm'
fi


export REPORTTIME=10 # print elapsed time when more than 10 seconds
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
# setopt CORRECT
unsetopt correct_all
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt rmstarsilent # Don't confirm `rm *

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
bindkey -M viins 'fd' vi-cmd-mode

# History settings
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"
export KEYTIMEOUT=10  # Fixes vi-mode esc lag
setopt append_history
setopt inc_append_history
setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt no_hist_beep
setopt hist_save_no_dups
setopt hist_verify
setopt share_history # share history between sessions ???

# See http://www.contextualdevelopment.com/articles/2006/zsh_history_searching
for keymap in v a; do
  bindkey -$keymap "^r" history-incremental-search-backward
  bindkey -$keymap "^s" history-incremental-search-forward
done

# Turn off flow control to let <Ctrl-s> passthrough to vim
stty -ixon

# http://hoelz.ro/blog/making-ssh_auth_sock-work-between-detaches-in-tmux
if [ ! -z "$SSH_AUTH_SOCK" -a "$SSH_AUTH_SOCK" != "$HOME/.ssh/.auth_sock" ] ; then
  unlink "$HOME/.ssh/.auth_sock" 2>/dev/null
  ln -s "$SSH_AUTH_SOCK" "$HOME/.ssh/.auth_sock"
  export SSH_AUTH_SOCK="$HOME/.ssh/.auth_sock"
fi

# Aliases

platform=$(uname)

# cd
alias ..='cd ..'

# ls
if [[ "$platform" == "Linux" ]]; then
  alias ls="ls -FGh --color"
  alias l="ls -lAhG --color"
  alias ll="ls -lGh --color"
  alias la='ls -lAGh --color'
elif [[ "$platform" == "Darwin" ]]; then
  alias ls="ls -FGh"
  alias l="ls -lAhG"
  alias ll="ls -lGh"
  alias la="ls -lAGh"
fi

# less
alias less="less -R"

# apt

alias ai='sudo apt-get install'
alias au='sudo apt-get update'
alias as='apt-cache search'

# grep
alias grep='grep --color=auto'

# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias git_diff='git diff --no-ext-diff -w "$@" | vim -R -'

# commands starting with % for pasting from web
alias %=' '

# Globbing issues
alias curl='noglob curl'
alias git='noglob git'

# Force Tmux into utf mode
#alias t='tmux -u'
# alias tmux='tmux -u'

# Syntax highlighting for cat and less
alias pcat=pygmentize
function pless() {
  pcat "$1" | less -R
}

# alias vim='mvim -v'
alias vi='vim'
# alias ec='emacsclient'
#alias emacs='emacs --no-window-system'
alias emacs='emacsclient -t -a ""'

alias cask="brew cask"

alias be='bundle exec'

if [[ `uname` == "Linux" ]]
then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
