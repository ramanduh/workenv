#!/usr/bin/env bash

set -e

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Instrall Homebrew on Mac OCX
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2>/dev/null
fi

install() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install "$@"
    else
        sudo sh -c "apt-get install --yes $*"
    fi
}

backup_conf() {
    # Do not backup if it's a symbolic link (installed by this script)
    if [ ! -L "$1" ]; then mv "$1" "$1.backup"; fi
}

link() {
    ln -f -s "$@"
}

# Provide realpath
if [[ "$OSTYPE" == "darwin"* ]]; then
	install coreutils
else
	install realpath
fi
