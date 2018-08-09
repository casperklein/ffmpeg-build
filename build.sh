#!/bin/bash

CORES=7
#--prefix="$HOME/ffmpeg_build" \

aptitude install nasm yasm libass-dev &&

source build-fdk-aac.sh &&
source build-lame.sh &&
source build-libvpx.sh &&
source build-x264.sh &&

wget https://ffmpeg.org/releases/ffmpeg-4.0.tar.bz2 &&
x ffmpeg-4.0.tar.bz2 &&
x ffmpeg-4.0.tar &&
cd ffmpeg-4.0 &&

PKG_CONFIG_PATH="/tmp/ffmpeg_build/lib/pkgconfig" ./configure \
--pkg-config-flags="--static" \
--extra-cflags="-I/tmp/ffmpeg_build/include" \
--extra-ldflags="-L/tmp/ffmpeg_build/lib" \
--extra-libs="-lpthread -lm" \
--enable-gpl \
--enable-version3 \
--enable-nonfree \
--enable-fontconfig \
--enable-iconv \
--enable-libfdk-aac \
--enable-libmp3lame \
--enable-libx264 \
--enable-zlib \
--enable-libass \
--enable-libfreetype \
--enable-libvpx &&
make -j$CORES
