#!/bin/bash

progs_common="zsh tmux git-core autossh silversearcher-ag most htop ncdu"
progs_emacs="emacs-nox silversearcher-ag-el"
progs_vim="vim-nox"
progs_dev="build-essential libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev freetds-dev"
progs_misc="cmus ranger rxvt-unicode-256color sshfs openvpn"
progs_servers="openssh-server"
progs_i3="blueman xinput"

sudo apt-get install -y $progs_common $progs_emacs $prog_vim $progs_dev $progs_servers $progs_misc
