#!/usr/bin/env bash

path=$1
echo $path

cd "$path"

first=`find . -name \*.mp3 | head -1`
echo $first

mp3wrap -v tmp.mp3 *.mp3
ffmpeg -i tmp_MP3WRAP.mp3 -acodec copy all.mp3 && \
rm tmp_MP3WRAP.mp3 && \
id3cp "$first" all.mp3

cd ..
