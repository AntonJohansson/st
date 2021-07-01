#!/bin/sh

cp config.aj.h config.h

git apply --verbose patches/st-scrollback-20210507-4536f46.diff
git apply --verbose patches/st-scrollback-mouse-20210701-4536f46.diff
git apply --verbose patches/st-newterm-0.8.2.diff
git apply --verbose patches/st-boxdraw_v2-0.8.3.diff
git apply --verbose patches/st-xresreload-20210701-4536f46.diff

make -j4
sudo make install
