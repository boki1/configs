#!/bin/sh

CONFIG_DIR=~/.config

#
# Fetches the changes made on the configuration
# files in CONFIG_DIR inside the repo dir (this one)
#

cp $CONFIG_DIR/zsh/zshrc 				zsh/
cp $CONFIG_DIR/alacritty/alacritty.yml 	alacritty/
cp $CONFIG_DIR/nvim/init.vim 			nvim/
cp $CONFIG_DIR/nvim/conf.vim 			nvim/
cp $CONFIG_DIR/nvim/maps.vim 			nvim/
cp $CONFIG_DIR/zathura/zathurarc 		zathura/
cp $CONFIG_DIR/git/config 				git/
cp $CONFIG_DIR/tmux/tmux.conf 			tmux/
cp $CONFIG_DIR/env/* 					env/
cp $CONFIG_DIR/rofi/config.rasi 		rofi/
