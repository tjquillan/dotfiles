#!/bin/bash

BASE_DIR=$(realpath $(dirname $0))

"$BASE_DIR"/get-chezmoi.sh -b "$HOME"/.local/bin init --apply tjquillan