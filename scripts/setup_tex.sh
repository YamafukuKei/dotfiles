#!/bin/bash -eu

sudo apt -y update; sudo apt -y upgrade
sudo apt install texlive-full

ln -s ~/dotfiles/.latexmkrc ~/.latexmkrc