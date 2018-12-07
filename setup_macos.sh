#!/usr/bin/env bash

set -e

echo "Keyboard settings (requires login/logout)"
defaults write -g InitialKeyRepeat -int 10       # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1               # normal minimum is 2 (30 ms)
