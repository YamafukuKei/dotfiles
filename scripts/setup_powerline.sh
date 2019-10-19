#!/bin/bash -eu

scripts=$(cd "$(dirname $0)"; pwd)
dotfiles=$(cd "$(dirname $0)"; cd ..; pwd)

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts/
./install.sh
cd ..
rm -rf fonts/

git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts/
./install.sh
cd ..
rm -rf nerd-fonts/

gsettings set org.gnome.desktop.interface monospace-font-name 'UbuntuMono Nerd Font Regular 12'
python -m pip install --user powerline-shell
python -m pip install --user powerline-status

mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json

ln -s $dotfiles/configs/powerline_shell/config.json ~/.config/powerline-shell/config.json