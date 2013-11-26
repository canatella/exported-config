#!/bin/sh

CDIR=$HOME/.exported-config

echo installing packages
sudo apt-get --yes install mc emacs24 emacs24-el yasnippet expand-region-el \
		exuberant-ctags

echo cloning config directory to $CDIR
git clone https://github.com/canatella/exported-config.git $CDIR

echo cloning emacs config
git clone https://github.com/canatella/emacscfg.git $HOME/.emacs.d

echo installing keyboard setup
desktop-file-install --dir=$HOME/.config/autostart $CDIR/xkb/xkb-setup.desktop

echo installing tmux config
ln -fs $CDIR/tmux/tmux.conf ~/.tmux.conf
