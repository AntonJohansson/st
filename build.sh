#!/bin/sh

git apply -3 --verbose patches/st-boxdraw_v2-0.8.3.diff
git apply -3 --verbose patches/st-scrollback-20210507-4536f46.diff
git apply -3 --verbose patches/st-scrollback-mouse-20210701-4536f46.diff
git apply -3 --verbose patches/st-xresreload-20210701-4536f46.diff
git apply -3 --verbose patches/st-newterm-0.8.2.diff
