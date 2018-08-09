#!/bin/bash

git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git &&
cd libvpx &&
./configure --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm --prefix=/tmp/ffmpeg_build &&
make -j$CORES &&
make install &&
cd ..
