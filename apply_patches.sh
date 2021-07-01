#!/bin/sh

git apply --verbose patches/st-vim.diff
git apply --verbose patches/newterm.diff
git apply --verbose patches/st-xresreloading-4536f46.diff
