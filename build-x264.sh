#!/bin/bash

git clone --depth 1 https://git.videolan.org/git/x264 &&
cd x264 &&
./configure --enable-static --enable-pic --disable-asm --prefix=$HOME/ffmpeg_build &&
make -j$CORES &&
make install &&
cd ..
