#!/bin/bash

DOT_FILES=(.bashrc .atom .tmux.conf .latexmkrc bin)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file

done
