#!/bin/bash
ls -vd /home/pi/secucam/* | /usr/bin/tail -n+5 | /usr/bin/awk '$0="file \x27"$0"\x27"' > /home/pi/filelist.txt
/usr/bin/ffmpeg -f concat -safe 0 -r 30 -i /home/pi/filelist.txt -filter_complex "drawtext='fontfile=monofonto.ttf: fontsize=30: box=1: boxcolor=black@0.75: boxborderw=5: fontcolor=white: x=w-text_w: y=h-text_h: text=%{metadata\:DateTimeDigitized}'" -c:v libx264 -preset ultrafast -crf 28 "/home/pi/videos/$(/usr/bin/date +%d.%m.%y-%H).mp4" -y
echo "Deleting oldest"
count=$(ls /home/pi/videos | wc -l)
echo "$count"
if [ $count -gt 10 ] ; then
  echo "Deleting oldest"
  rm $(ls -vd /home/pi/videos/* | head -n 1)
else
  echo "Not full"
fi
