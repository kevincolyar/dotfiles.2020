#! /usr/bin/env bash

set -e

if [ ! -d $HOME/.emacs.d ]
then
  git clone --recursive http://github.com/syl20bnr/spacemacs $HOME/.emacs.d
  cd $HOME/.emacs.d
  git checkout -b develop origin/develop
  cd -
else
  echo "$HOME/.emacs.d exists"
fi
