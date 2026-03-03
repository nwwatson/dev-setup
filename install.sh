#!/usr/bin/env sh

brew install tmux
brew install starship
brew install --cask ghostty
brew install neovim

echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc

curl -fsSL https://claude.ai/install.sh | bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc

source ~/.zshrc

mkdir -p ~/.config/starship && cp ./starship/starship.toml ~/.config/starship.toml
mkdir -p ~/.config/ghostty && cp ./ghostty/config ~/.config/ghostty/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
