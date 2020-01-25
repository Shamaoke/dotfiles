#! /usr/bin/env zsh

ffmpeg -video_size 1280x702 \
       -f x11grab \
       -framerate 10 \
       -draw_mouse 0 \
       -i :0.0+160,123 \
       -c:v vp9 \
       -qp 0 \
       -pix_fmt yuv444p \
       -preset ultrafast \
       output.webm
