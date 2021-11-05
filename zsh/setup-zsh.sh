#!/bin/bash

# WATCH OUT!
# Removes previous zshrc, so backup it if you want it!
#
# Execute from the root of the repo!

OH_MY_ZSH=$HOME/.config/zsh/oh-my-zsh
mkdir -p $OH_MY_ZSH; cd $OH_MY_ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

rm $HOME/.zshrc
ln $HOME/.config/zsh/zshrc $HOME/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$OH_MY_ZSH/custom}/plugins/zsh-autosuggestions



