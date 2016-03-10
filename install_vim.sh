#!/usr/bin/env bash

function install_vundle
{
  if [ ! -e $HOME/.vim/bundle/vundle ]
  then
    echo 'Installing Vundle'
    git clone https://github.com/gmarik/vundle.vim.git $HOME/.vim/bundle/vundle
  fi
}

function install_vim_bundles
{
  vim -c ":BundleClean!" -c ":BundleInstall" -c ":qa"
}

install_vundle
install_vim_bundles
