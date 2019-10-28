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

mkdir -p !/.config/powerline && cp -R ~/.local/lib/python2.7/site-packages/powerline/config_files/* ~/.config/powerline/.
mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json

cp $dotfiles/configs/powerline_shell/config.json ~/.config/powerline-shell/config.json
cp $dotfiles/configs/powerline_shell/themes/*.py ~/.local/lib/python2.7/site-packages/powerline_shell/themes/.

cp $dotfiles/configs/powerline/colorschemes/*.json ~/.config/powerline/colorschemes/.
cp $dotfiles/configs/powerline/colorschemes/tmux/*.json ~/.config/powerline/colorschemes/tmux/.