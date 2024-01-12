#!/bin/bash

# use SSH instead of HTTPS to clone repos
# !!! It's not working with Julia.
#git config --global url."git@github.com:".insteadOf "https://github.com/"
#git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"

# nvim
rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

# tmux 
rm -rf ~/.tmux.conf
ln -s  $(pwd)/.tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf

# on-my-zsh
rm -rf ~/.oh-my-zsh/custom/themes/xxf.zsh-theme
ln -s $(pwd)/xxf.zsh-theme ~/.oh-my-zsh/custom/themes

# git alias
git config --global alias.b branch
git config --global alias.s status
git config --global alias.st status
git config --global alias.c commit
git config --global user.name "Yang,Jingrong"
git config --global user.email "immofon@163.com"
