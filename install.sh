#!/usr/bin/env bash
set -e

# Detect script location to run from anywhere
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $DOTFILES_DIR

echo "🚀 Starting dotfiles setup..."

# --- /etc configs ---
if [ "$EUID" -ne 0 ]; then
    echo "⚠️  Linking /etc configs requires sudo privileges"
    sudo rm -rf /etc/fish /etc/starship /etc/tmux /etc/tmux.conf
    sudo stow -d $DOTFILES_DIR -t /etc etc
    sudo ln -s /etc/tmux/tmux.conf /etc/tmux.conf
    sudo git clone https://github.com/tmux-plugins/tpm /etc/tmux/plugins/tpm
else
    stow -d $DOTFILES_DIR -t /etc etc
fi

# --- ~/.config configs ---
echo "🔗 Linking user configs..."
stow -d $DOTFILES_DIR -t ~/.config .config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "✅ All configs linked successfully!"

