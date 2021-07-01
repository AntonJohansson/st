#!/bin/sh

cp config.aj.h config.h

git apply --verbose patches/newterm.diff
git apply --verbose patches/st-boxdraw_v2-0.8.3.diff
git apply --verbose patches/st-scrollback-20210507-4536f46.diff
git apply --verbose patches/st-scrollback-mouse-20191024-a2c479c.diff
git apply --verbose patches/st-xresreloading-4536f46.diff

make -j4
sudo make install
