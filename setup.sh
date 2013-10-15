#!/bin/sh

CDIR=$HOME/.exported-config

echo installing packages
sudo apt-get install mc emacs24 emacs24-el

echo cloning config directory to $CDIR
git clone https://github.com/canatella/exported-config.git $CDIR

echo cloning emacs config
git clone https://github.com/canatella/emacscfg.git $HOME/.emacs.d

echo installing keyboard setup
desktop-file-install --dir=$HOME/.config/autostart $CDIR/xkb/xkb-setup.desktop
