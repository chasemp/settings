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
ln -s ~/settings/git/gitconfig ~/.gitconfig
ln -s ~/settings/bash/bash_profile ~/.bash_profile
ln -s ~/settings/bash/bashrc ~/.bashrc
ln -s ~/settings/sup/sup.ini ~/.sup.ini
ln -s ~/settings/vim/vimrc ~/.vimrc
