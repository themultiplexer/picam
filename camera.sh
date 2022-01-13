#!/bin/bash
cd /home/pi/mjpg-streamer/mjpg-streamer-experimental
screen -dmS "Streamer" ./mjpg_streamer -i "input_raspicam.so -x 1920 -y 1080 -fps 30" -o "output_http.so -l 0.0.0.0 -w www" -o "output_file.so -f /home/pi/secucam -d 2000 -s 5000 -c /home/pi/fixexif.sh"

