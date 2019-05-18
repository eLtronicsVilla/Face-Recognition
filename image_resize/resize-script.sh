#!/bin/bash

#simple script for resizing images in all class directories
#also reformats everything from whatever to png

if [ `ls Dataset/*/*.jpg 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in Dataset/*/*.jpg; do
    convert "$file" -resize 182x182\! "${file%.*}.png"
    file "$file" #uncomment for testing
    rm "$file"
  done
fi

if [ `ls Dataset/*/*.png 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in Dataset/*/*.png; do
    convert "$file" -resize 182x182\! "${file%.*}.png"
    file "$file" #uncomment for testing
  done
fi

