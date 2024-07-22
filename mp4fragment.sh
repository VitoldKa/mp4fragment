#!/bin/bash
# find -name "*.ts" -exec /cygdrive/c/bin/proxy.sh {} \;

#IFS=$'\n'

#echo ${1}

printf -v f '%q' "$1"
echo $f

size="640:360"

# -hwaccel cuvid  scale_cuda
if [ ! -f "${f}.mov" ]; then
	arguments="/cygdrive/c/bin/ffmpeg.exe -analyzeduration 50M -probesize 50M  -n -vsync 0 -hwaccel nvdec -threads 8 -c:v h264_cuvid -i ${f} \
		-map 0  -max_muxing_queue_size 256 \
		-c:v copy \
		-c:a copy -an \
		-f segment -segment_time 00:10:00.000 -reset_timestamps 1 \
		${f}.%03d.mp4"


	echo /cygdrive/c/bin/ffmpeg.exe $arguments
	eval  "$arguments"
fi
