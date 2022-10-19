#!/bin/sh

echo -e "\033[0;34m==> Installing Poetry...\033[0m"

if [[ ! -d $HOME/.local/share/pypoetry ]]; then
    curl -sSL https://install.python-poetry.org | python3 -
else
    echo -e "\033[0;33m  -> Poetry is already installed.\033[0m"
fi
