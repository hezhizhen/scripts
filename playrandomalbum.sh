#!/usr/bin/env sh

line=$(shuf -n 1 albums.csv)         # randomly select one line
link=$(echo $line | cut -d "," -f 3) # use "," as delimiter character and specify the 3rd field
open $link                           # open this link in the default browser
