#!/bin/sh
cd ~/Dropbox/Diary
suffix=$(date +"-%m-%d".md)
find . -maxdepth 1 -name "*$suffix" -print | xargs mvim -f
