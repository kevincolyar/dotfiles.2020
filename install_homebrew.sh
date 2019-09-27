#!/usr/bin/env bash

set -e

progs_common="coreutils vim emacs zsh zsh-completions tmux readline most dos2unix terminal-notifier ack htop markdown tree pt ripgrep pandoc html2text sshuttle fasd ncdu ngrep"
progs_dev="git kitematic ctags mysql rabbitmq node unixodbc leiningen rlwrap diff-so-fancy bat"
progs_db="freetds --with-unixodbc"
progs_sec="encfs nmap netcat autossh ipcalc nikto"
progs_ruby="rbenv ruby-build rbenv-gemset rbenv-gem-rehash rbenv-bundler"
progs_misc="cmus"

apps="osxfuse google-chrome firefox gitx iterm2 virtualbox vlc sshfs dropbox cyberduck keepassx key-codes flash ngrok wireshark musicbrainz-picard"
apps_licensed="default-folder-x cocktail postbox daisydisk"
apps_quicklook="qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package"
apps_emacs="mactex" # For latex to pdf export

brew update
brew doctor
brew install $progs_common
brew install $progs_dev
brew install $progs_docker
brew install $progs_sec
brew install $progs_ruby
brew install $progs_misc

# Cask
brew install cask
brew cask install $apps
brew cask install $apps_licensed
brew cask install $apps_quicklook
brew cask install $apps_emacs

# Emacs
# brew tap d12frosted/emacs-plus
# brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon --srgb
# brew linkapps

# Disable Google Analytics
brew analytics off
