#!/bin/sh

cp config.aj.h config.h

PATCHDIR=patches

PATCHES=$(ls patches)
for PATCH in $PATCHES; do
	git apply --verbose $PATCHDIR/$PATCH
done

make -j4
sudo make install
