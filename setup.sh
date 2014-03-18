#!/bin/bash

git config user.name "Chase Pettet [rush]"
git config user.email chase.mp@gmail.com

function rmfile() {
    local BIN=$1
    rm -vf $1
}

rmfile ~/.profile
rmfile ~/.bashrc
rmfile ~/.bash_profile
rmfile ~/.bash_aliases
rmfile ~/.gitconfig
rmfile ~/.sup.ini
rmfile ~/.vimrc

ln -s "$PWD/git/gitconfig" ~/.gitconfig
ln -s "$PWD/bash/bash_aliases" ~/.bash_aliases
ln -s "$PWD/bash/bash_profile" ~/.bash_profile
ln -s "$PWD/bash/bashrc" ~/.bashrc
ln -s "$PWD/sup/sup.ini" ~/.sup.ini
ln -s "$PWD/vim/vimrc" ~/.vimrc

if [ ! -d ~/bin ]
then
 cd && git clone https://github.com/chasemp/bin.git && cd -
fi

rm -f ~/bin/prompt.sh
ln -s ~/settings/bin/prompt.sh ~/bin/prompt.sh
chmod +x ~/bin/*

ln -s ~/bin/blog.py /usr/local/bin/blog
