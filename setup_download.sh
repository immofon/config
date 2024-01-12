#!/bin/bash

# tpm
rm -rf ~/.tmux/plugins/tpm
mkdir -p ~/.tmux/plugins
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# omyzsh BEGIN
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# omyzsh END

