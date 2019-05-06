#!/usr/bin/env bash

set -e

export CONF_PATH="rc_files"

. libs/common.sh

for file in formulas/*.sh
do
	printf "\n > Run %s ..." "$file"
	. "$file"
done
