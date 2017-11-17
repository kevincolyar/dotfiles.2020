#!/bin/bash

progs_common="zsh tmux git-core autossh openjdk-7-jre-headless silversearcher-ag"
progs_emacs="emacs-nox silversearcher-ag-el"
progs_vim="vim-nox"
progs_dev="build-essential libssl-dev libreadline-dev zlib1g-dev libmysqlclient-dev libsqlite3-dev freetds-dev"
progs_servers="openssh-server"

sudo apt-get install -y $progs_common $progs_emacs $prog_vim $progs_dev $progs_servers
