#!/bin/bash
set -e
export DISPLAY=:0
export XAUTHORITY=/home/md/.Xauthority

CAM1='rtsp://user:password@ipAddress/cam/realmonitor?channel=1&subtype=1'
CAM2='rtsp://user:password@ipAddress/cam/realmonitor?channel=4&subtype=1'
CAM3='rtsp://user:password@ipAddress/cam/realmonitor?channel=6&subtype=1'
CAM4='rtsp://user:password@ipAddress/cam/realmonitor?channel=8&subtype=1'

DISPLAY=:0 ffplay -fflags nobuffer -flags low_delay -framedrop -analyzeduration 0 -probesize 32 -rtsp_transport udp -noborder -x 960 -y 540 -left 0 -top 0 "CAM1" &
DISPLAY=:0 ffplay -fflags nobuffer -flags low_delay -framedrop -analyzeduration 0 -probesize 32 -rtsp_transport udp -noborder -x 960 -y 540 -left 960 -top 0 "CAM2" &
DISPLAY=:0 ffplay -fflags nobuffer -flags low_delay -framedrop -analyzeduration 0 -probesize 32 -rtsp_transport udp -noborder -x 960 -y 540 -left 0 -top 540 "CAM3" &
DISPLAY=:0 ffplay -fflags nobuffer -flags low_delay -framedrop -analyzeduration 0 -probesize 32 -rtsp_transport udp -noborder -x 960 -y 540 -left 960 -top 540 "CAM4" &

sleep infinity
