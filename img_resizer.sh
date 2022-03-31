#!/bin/sh

if [[ "$1" == "" ]]; then
  echo "expected source folder"
  exit 1
fi


# $1 : image source
# $2 : image size
# $3 : image output
function resize_img_ffmpeg(){
  echo "## Resizing $1 to $2, output file is $3"
  ffmpeg -i "$1" -vf scale=$2:-1 $3
  echo "## Resize complete"
}

FILES=("transgender-flag" "asexual-flag" "pansexual-flag" "bisexual-flag" "nonbinary-flag" "pride-flag" "intersex-flag" "polyamory-flag" "lesbian-flag" "philadelphia-pride-flag" "greysexual-flag" "gender-queer-flag" "gender-fluid-flag" "aromantic-flag" "demisexual-flag" "agender-flag")

echo "Source folder: $1"
echo "Png folder: $1/png"
TMP_DIR=$(mktemp -d)
echo "Temp dir created at: $TMP_DIR"
for i in "${FILES[@]}"
do
  :
  echo "$i"
  cp $1/png/${i}.png $TMP_DIR/${i}_512.png
  resize_img_ffmpeg $1/png/${i}.png 128 $TMP_DIR/${i}_128.png
  resize_img_ffmpeg $1/png/${i}.png 72 $TMP_DIR/${i}_72.png
  resize_img_ffmpeg $1/png/${i}.png 32 $TMP_DIR/${i}_32.png
done
echo "Temp: $TMP_DIR"
