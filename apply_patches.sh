#!/bin/sh

cp config.aj.h config.h

# Doesnt work for the current version
#git apply --verbose patches/st-vim.diff
git apply --verbose patches/newterm.diff
git apply --verbose patches/st-xresreloading-4536f46.diff

make -j4
sudo make install
