#!/bin/bash
sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback video_nr=0 card_label="Webcam" exclusive_caps=1
ffmpeg -hide_banner -reconnect 1 -reconnect_at_eof 1   -reconnect_streamed 1 -timeout 30000000  -stream_loop -1   -f mjpeg  -i "http://192.168.0.128:8080/cam.mjpeg" -vf "format=yuv420p, transpose=1,transpose=1,fps=30"  -f v4l2 /dev/video0

