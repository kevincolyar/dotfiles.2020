#!/usr/bin/env bash

set -e

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

cd ~/.rbenv && src/configure && make -C src

mkdir -p ~/.rbenv/plugins

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/jf/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset
