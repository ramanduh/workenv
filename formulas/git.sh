#!/usr/bin/env bash

set -e

git config --global core.excludesfile "$(realpath "${CONF_PATH}/gitignore")"
