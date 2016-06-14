#!/bin/bash

progs_common="vim zsh tmux readline most dos2unix terminal-notifier ack htop markdown tree pt html2text sshuttle fasd"
progs_dev="git kitematic ctags mysql rabbitmq node unixodbc leiningen rlwrap"
progs_db="freetds --with-unixodbc"
progs_sec="encfs nmap netcat autossh"
apps="osxfuse google-chrome gitx iterm2 virtualbox vlc sshfs dropbox cyberduck keepassx key-codes flash ngrok wireshark"
licensed_apps="default-folder-x cocktail postbox daisydisk"
progs_ruby="rbenv ruby-build rbenv-gemset rbenv-gem-rehash rbenv-bundler"
quicklook_progs="qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package"

brew update && \
brew doctor && \
brew install $progs_common && \
brew install $progs_dev && \
brew install $progs_docker && \
brew install $progs_sec && \
brew install $progs_ruby

# Cask
brew install cask
brew cask install $apps
brew cask install $licensed_apps
brew cask install $quicklook_progs

# Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps
