#!/usr/bin/env sh

link=$1                                                                                    # $0 is the full path of this script, $1 to $n are arguments
html=$(curl -Ls $link)                                                                     # get HTML of this link
title=$(echo $html | awk -vRS="</title>" '/<title>/{gsub(/.*<title>|\n+/,"");print;exit}') # extract title (copy from https://stackoverflow.com/questions/3833088/extract-title-of-a-html-file-using-grep)
echo $title
title=$(echo $title | awk -F "|" '{print $1}')                                 # remove suffix `| Spotify`
album=$(echo $title | awk -F "- Album by" '{print $1}' | awk '{$1=$1;print}')  # extract album name without leading or trailing spaces (copy from https://unix.stackexchange.com/questions/102008/how-do-i-trim-leading-and-trailing-whitespace-from-each-line-of-some-output)
singer=$(echo $title | awk -F "- Album by" '{print $2}' | awk '{$1=$1;print}') # extract singer name without leading or trailing spaces
echo "$singer,$album,$link" >>$SCRIPTSPATH/albums.csv                          # save to local file
sort -uo $SCRIPTSPATH/albums.csv $SCRIPTSPATH/albums.csv                       # sort and remove duplicated lines
