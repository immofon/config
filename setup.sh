#!/bin/bash

# use SSH instead of HTTPS to clone repos
# !!! It's not working with Julia.
#git config --global url."git@github.com:".insteadOf "https://github.com/"
#git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"

# nvim
rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

# on-my-zsh
rm -rf ~/.oh-my-zsh/custom/themes/xxf.zsh-theme
ln -s $(pwd)/xxf.zsh-theme ~/.oh-my-zsh/custom/themes
