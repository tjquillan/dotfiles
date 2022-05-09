#!/bin/sh

echo -e "\033[0;34m==> Installing Rustup...\033[0m"

if [[ ! -d $RUSTUP_HOME ]]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | zsh -s -- --no-modify-path -y
else
    echo -e "\033[0;33m  -> Rustup is already installed.\033[0m"
fi