#!/bin/bash -eu

sudo apt install -y tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmuxline.conf ~/.tmux/tmuxline.conf
