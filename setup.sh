#!/bin/bash

# use SSH instead of HTTPS to clone repos
# !!! It's not working with Julia.
#git config --global url."git@github.com:".insteadOf "https://github.com/"
#git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"

# nvim
rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

# tmux and tpm
rm -rf ~/.tmux.conf
ln -s  $(pwd)/.tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf

rm -rf ~/.tmux/plugins/tpm
mkdir -p ~/.tmux/plugins
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# on-my-zsh
rm -rf ~/.oh-my-zsh/custom/themes/xxf.zsh-theme
ln -s $(pwd)/xxf.zsh-theme ~/.oh-my-zsh/custom/themes


rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# tpm
