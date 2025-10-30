#! /usr/bin/env zsh

ffmpeg -video_size 2560x1440 \
       -f x11grab \
       -framerate 60 \
       -draw_mouse 1 \
       -i :0.0+2560,0 \
       -c:v vp9 \
       -qp 0 \
       -pix_fmt yuv444p \
       -preset ultrafast \
        output.webm

