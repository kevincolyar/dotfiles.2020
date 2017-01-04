Kevin Colyar's Dot Files
------------------------

These are config files to set up a system the way I like it.

Requirements
============

* git
* sh

Installation
============

```sh
    git clone git://github.com/kevincolyar/dotfiles ~/.dotfiles
```

### Run installation script:

```sh
    cd ~/.dotfiles
    ./install.sh
```

### Run system specific installation scripts:

```sh
    ./install_prezto.sh
    ./install_vim.sh
    ./install_spacemacs.sh
    ./install_apt.sh
    ./install_homebrew.sh
````

Preferred Software
==================

* Tmux
* Zsh

```sh
    chsh -s /bin/zsh
```


Download
===========
```sh

  curl -L https://github.com/kevincolyar/dotfiles/tarball/master | tar zx

```
