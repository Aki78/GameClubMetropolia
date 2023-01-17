#ffmpeg -i $1 -vf scale=640:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - $1.gif
ffmpeg \
  -i logic_example.mkv \
  -ss 00:00:00.000 \
  -pix_fmt rgb24 \
  -r 10 \
  -s 640x480 \
  -t 00:00:59.000 \
  logic_example.gif


