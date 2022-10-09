ffmpeg -i $1 -vf scale=640:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - $1.gif
