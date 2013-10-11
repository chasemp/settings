#!/bin/bash
function rmfile() {
    local BIN=$1
    rm -vf $1
}

rmfile ~/.profile
rmfile ~/.bashrc
rmfile ~/.bash_profile
rmfile ~/.gitconfig
rmfile ~/.sup.ini
rmfile ~/.vimrc
ln -s "$PWD/git/gitconfig" ~/.gitconfig
ln -s "$PWD/bash/bash_profile" ~/.bash_profile
ln -s "$PWD/bash/bashrc" ~/.bashrc
ln -s "$PWD/sup/sup.ini" ~/.sup.ini
ln -s "$PWD/vim/vimrc" ~/.vimrc

chmod +x $PWD/bin/*
rm -f /usr/local/bin/prompt.sh
ln -s ~/settings/bin/prompt.sh /usr/local/bin/prompt.sh

