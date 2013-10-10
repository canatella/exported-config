#!/bin/sh

CDIR=$HOME/.exported-config
git clone https://github.com/canatella/exported-config.git $CDIR
git clone https://github.com/canatella/exported-config.git $HOME/.emacs.d

desktop-file-install --dir=$HOME/.config/autostart $CDIR/xkb/xkb-setup.desktop
