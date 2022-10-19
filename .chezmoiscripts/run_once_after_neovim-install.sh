#!/bin/sh

echo -e "\033[0;34m==> Installing Neovim...\033[0m"

if ! which nvim >/dev/null; then
    mkdir -p $HOME/.local/bin
    cd $HOME/.local/bin
    curl -fsSL https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o nvim
    chmod +x nvim
else
    echo -e "\033[0;33m  -> Neovim is already installed.\033[0m"
fi
