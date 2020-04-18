#!/bin/bash

set -e

CWD=$1
TwoXDir="2.0x"
ThreeXDir="3.0x"

cd $CWD

for d in "${CWD}"/*; do
    if [ -d "$d" ]; then
        # get dir name
        Dir=${d%%+(/)}    # trim however many trailing slashes exist
        DirName=${Dir##*/}
        echo "process $DirName"

        # enter dir
        cd $DirName

        # handle @2x asset
        mkdir "${TwoXDir}"
        TwoXAsset="$(find . -name '*@2x.png')"
        mv "${TwoXAsset}" "${TwoXDir}"/"$DirName".png

        # handle @3x asset
        mkdir "${ThreeXDir}"
        ThreeXAsset="$(find . -name '*@3x.png')"
        mv "${ThreeXAsset}" "${ThreeXDir}"/"$DirName".png

        # handle asset
        Asset="$(find . -maxdepth 1 -name '*.png')"
        mv "${Asset}" "$DirName".png

        # leave dir
        cd ..
    fi
done

echo "done"