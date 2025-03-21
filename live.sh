#!/usr/bin/env bash

rm -rf stream
mkdir stream

ffmpeg -f v4l2 -i /dev/video0 \
       -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2000k -g 15 \
       -profile:v high -level:v 4.2 -pix_fmt yuv420p \
       -c:a aac -b:a 128k -ar 44100 -ac 2 \
       -hls_time 1 -hls_list_size 3 -hls_flags delete_segments+append_list+independent_segments -hls_allow_cache 0 \
       -force_key_frames "expr:gte(t,n_forced*1)" \
       -f hls stream/output.m3u8
