# convert mp4 to mp3
ffmpeg -i file.mp4 file.mp3

# cutting/extracting parts (00:48-02:39 in this example) from an existing video
ffmpeg -i input.mp4 -ss 00:00:48 -to 00:02:39 -async 1 -strict -2 output.mp4

# Record (capture) screen
ffmpeg -y -f dshow -i audio="Mikrofon (High Definition Audio)" -f gdigrab -video_size 1440x900 -i desktop -vcodec h264 foo.mkv


ffmpeg -framerate 10 -f dshow -i video="screen-capture-recorder":audio="virtual-audio-capturer" -f dshow -i audio="Mikrofon (High Definition Audio" 


