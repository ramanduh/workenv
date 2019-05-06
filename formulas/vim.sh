#!/usr/bin/env bash

set -e

if [[ "$OSTYPE" == "linux"* ]]; then
	install vim python-flake8 ctags
fi

if [ -f $HOME/.vimrc ]; then backup_conf $HOME/.vimrc; fi
link `realpath ${CONF_PATH}/vimrc` $HOME/.vimrc

if [ ! -d $HOME/.vim/bundle ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
