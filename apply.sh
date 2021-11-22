#!/bin/sh

CONFIG_DIR=~/.config

#
# Apply the changes made on the repo dir (this one)
# with the files in CONFIG_DIR
#

cp zsh/zshrc 				$CONFIG_DIR/zsh
cp alacritty/alacritty.yml 	$CONFIG_DIR/alacritty/
cp nvim/init.vim 			$CONFIG_DIR/nvim/
cp nvim/conf.vim 			$CONFIG_DIR/nvim/
cp nvim/maps.vim 			$CONFIG_DIR/nvim/
cp zathura/zathurarc 		$CONFIG_DIR/zathura/
cp git/config 				$CONFIG_DIR/git
cp tmux/tmux.conf 			$CONFIG_DIR/tmux/
cp env/* 					$CONFIG_DIR/env/
cp rofi/config.rasi 		$CONFIG_DIR/rofi/
