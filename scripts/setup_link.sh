#!/bin/bash -eu

DOT_FILES=(.rosrc .bashrc bin .dircolors)

for file in ${DOT_FILES[@]}
do
    if ls -a $HOME | grep $file > /dev/null; then
        rm -rf $HOME/$file
    fi

    ln -s $HOME/dotfiles/$file $HOME/$file

done