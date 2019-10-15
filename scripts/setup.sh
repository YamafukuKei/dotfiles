#!/bin/bash

scripts=$(cd "$(dirname $0)"; pwd)
dotfiles="$scripts"

libpkgs="clang-4.0"
devpkgs="build-essential clang cmake git llvm python-dev python-flake8 python3-dev npm python-pip python3-pip"

sudo apt -y update; sudo apt -y upgrade; sudo apt -y dist-upgrade
sudo apt install -y $devpkgs

# -- Set symbolic link --
$dotfiles/scripts/setup_link.sh

# -- Change CapsLock to Ctrl --
$dotfiles/scripts/nocaps.sh

# -- git settings --
git config --global user.name "YamafukuKei"
git config --global user.email "p104134k@mail.kyutech.jp"
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

# -- Install and Setup tmux --
$dotfiles/scripts/setup_tmux.sh

# -- Setup powerline --
$dotfiles/scripts/setup_powerline.sh

# -- Setup TeX --
$dotfiles/scripts/setup_tex.sh

# -- Install VS Code --
cd ~/Downloads
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
cd $dotfiles

# -- GoogleChrome --
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt -fy install
cd $dotfiles

# -- kazam --
udo add-apt-repository -y ppa:kazam-team/unstable-series
sudo apt update
sudo apt install -y python3-cairo python3-xlib kazam

# -- upgrade pip --
python -m pip install --upgrade pip
python3 -m pip install --upgrade pip

# -- ROS --
$dotfiles/scripts/setup_ros.sh
