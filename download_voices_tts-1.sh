#!/bin/sh
models=${*:-"en_GB-northern_english_male-medium en_US-libritts_r-medium"} # en_US-ryan-high

for i in $models ; do
    [ ! -e "voices/$i.onnx" ] && python -m piper.download_voices --data-dir voices $i < /dev/null > /dev/null
done
