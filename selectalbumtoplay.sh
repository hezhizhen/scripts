#!/usr/bin/env sh

line=$(cat albums.csv | fzf)         # singer,album name,spotify link
link=$(echo $line | cut -d "," -f 3) # use "," as delimiter character and specify the 3rd field
open $link                           # open this link in the default browser
