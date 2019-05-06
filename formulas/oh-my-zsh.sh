#!/usr/bin/env bash

set -e

install zsh curl

if [[ "$OSTYPE" == "linux"* ]]; then
	install xclip
fi

if [ -f "$HOME/.zshrc" ]; then backup_conf "$HOME/.zshrc"; fi

# Do not call env zsh by adding a grep
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | grep -v 'env zsh')"

link "$(realpath "${CONF_PATH}/zshrc")" "$HOME/.zshrc"
