#!/bin/sh

cp config.aj.h config.h

PATCHDIR=patches

PATCHES=$(ls patches)
for patch in $PATCHES; do
	git apply --verbose $patchdir/$patch
done

make -j4
sudo make install
