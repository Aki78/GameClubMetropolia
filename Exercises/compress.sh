#ffmpeg -i $1 -vf scale=640:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - $1.gif
ffmpeg \
  -i exercise16.mkv \
  -ss 00:00:00.000 \
  -pix_fmt rgb24 \
  -r 10 \
  -s 320x240 \
  -t 00:00:30.000 \
  exercise16.gif


