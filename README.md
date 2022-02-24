# picam
Some scripts for flexible video streaming and timelapsing.

## Needs:
- [mjpeg-streamer](https://github.com/jacksonliam/mjpg-streamer)
- exiftool
- screen
- ffmpeg


## What the scripts doin?
### camera.sh
Starts mjpeg-streamer and detaches it into a screen (for reading output later).\
Parameters set up to stream to port 8080 AND to take pictures every 2s and store max. 5000.

### makemov.sh
Uses ffmpeg to stitch a video out of the stored pictures. Only keeps *n* videos (configure to your needs).\
Most of the work went into the damn timestamp.


### fixexif.sh
Sets the EXIF creation date to the modified date so ffmpeg can read it.
