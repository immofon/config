#!/bin/bash

# use SSH instead of HTTPS to clone repos
# !!! It's not working with Julia.
#git config --global url."git@github.com:".insteadOf "https://github.com/"
#git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"

rm -rf ~/.config/nvim
ln -S ./nvim ~/.config/nvim
