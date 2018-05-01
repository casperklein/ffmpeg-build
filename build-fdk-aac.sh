#!/bin/bash

git clone --depth 1 https://github.com/mstorsjo/fdk-aac &&
cd fdk-aac &&
autoreconf -fiv &&
./configure --disable-shared --prefix=$HOME/ffmpeg_build &&
make -j$CORES &&
make install &&
cd ..
