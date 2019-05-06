#!/usr/bin/env bash

set -e

if [[ "$OSTYPE" == "linux"* ]]; then
	install terminator
	mkdir -p "$HOME/.config/terminator/"
	if [ -f "$HOME/.config/terminator/config" ]; then backup_conf "$HOME/.config/terminator/config"; fi
	link "$(realpath "${CONF_PATH}/terminator_config")" "$HOME/.config/terminator/config"
fi
