#!/usr/bin/env bash 
#list=$(find -iname "*.jpg")
for file in $(find -iname "*.jpg")
do
    filename=$(basename "$file")
    filename=${filename%.*}
    convert $file -resize 128x128 $filename.png
done

#convert *.jpg -resize 128x128 .png
#mv option zoals *.jpg -t directory, move het terug naar eigen directory
#kun je met find achter de path komen van de find en dit teruggeven net als met wc in een pipe?
