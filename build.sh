#!/bin/sh

cp config.aj.h config.h

PATCHES=$(ls patches)
for patch in $PATCHES; do
	git apply --verbose $patch
done

make -j4
sudo make install
