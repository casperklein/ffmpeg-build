#!/bin/bash

wget 'https://netcologne.dl.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz' &&

tar xzvf lame-3.100.tar.gz &&
cd lame-3.100 &&
./configure --enable-nasm --disable-shared --prefix=/tmp/ffmpeg_build &&
make -j$CORES &&
make install &&
cd ..
