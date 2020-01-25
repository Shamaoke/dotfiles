#! /usr/bin/env zsh

ffmpeg -framerate 10 \
       -i frame-%03d.png \
       -plays 0 \
       output.apng
