#!/usr/bin/env sh

brew install tmux
brew install starship

mkdir -p ~/.config && cp ./starship/starship.toml ~/.config/starship.toml

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
