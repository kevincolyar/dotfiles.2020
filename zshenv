# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Since .zshenv is always sourced, it often contains exported variables that should be available to other programs.
# For example, $PATH, $EDITOR, and $PAGER are often set in .zshenv.

export EDITOR='vim'
export GREP_COLOR='1;33'
export PAGER='most'

# PATHS
if [[ -z $TMUX ]]; then
  # Oracle
  #export ORACLE_HOME=~/Library/Oracle/instantclient_11_2
  #export DYLD_LIBRARY_PATH=$ORACLE_HOME
  #export PATH=$PATH:$ORACLE_HOME
  export DIAG_ADR_ENABLED=off  # Disable creation of oradiag directory

  # NPM
  # export PATH=node_modules/.bin:$PATH
  # export PATH=/usr/local/share/npm/bin:$PATH
  #
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

  # Homebrew
  export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

  # ~/bin
  export PATH="$HOME/bin:$HOME/bin/ssh:$HOME/bin/mount:$PATH"
fi
