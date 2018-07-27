 #export -U NVM_DIR="$HOME/.nvm"
 #[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

 # Homebrew
 #export -U PATH="/usr/local/bin:/usr/local/sbin:$PATH"

 # ~/bin
 #export -U PATH="$HOME/bin:$HOME/bin/ssh:$HOME/bin/mount:$PATH"

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
