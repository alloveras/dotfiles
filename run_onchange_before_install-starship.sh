#!/usr/bin/env bash

set -eu -o pipefail

VERSION="1.21.1"
INSTALLED_VERSION="unknown"

if command -v starship 2>&1 >/dev/null; then
    INSTALLED_VERSION="$(starship --version | head -n1 | cut -d" " -f2)"
fi

if [ "${INSTALLED_VERSION}" != "${VERSION}" ]; then
    curl -sSL https://starship.rs/install.sh | sh /dev/stdin --version "v${VERSION}" --bin-dir ~/.local/bin --yes
fi
