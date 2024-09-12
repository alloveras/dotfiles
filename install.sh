#!/usr/bin/env bash

set -eu -o pipefail

LOCAL_BIN_DIR="${HOME}/.local/bin"

echo ""
echo "🤚  This script will setup .dotfiles for you."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

export PATH="${LOCAL_BIN_DIR}:${PATH}"

if ! command -v chezmoi >/dev/null 2>&1; then
    echo "👊  Installing chezmoi ..."
    bash -c "$(curl -fsLS get.chezmoi.io)" -- -b "${LOCAL_BIN_DIR}"
fi

echo ""
echo "🚀  Initializing dotfiles ..."
chezmoi init --apply "https://github.com/alloveras/dotfiles"

echo ""
echo "✅  Done"
