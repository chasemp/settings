#!/bin/bash
rm -f ~/.bashrc
mv ~/.profile ~./bakprofile
rm -f ~/.bash_profile
ln -s ~/settings/git/gitconfig ~/.gitconfig
ln -s ~/settings/bash/bash_profile ~/.bash_profile
ln -s ~/settings/bash/bashrc ~/.bashrc
