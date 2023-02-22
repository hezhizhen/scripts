#!/usr/bin/env sh

link=$1                                                                                                    # $0 is the full path of this script, $1 to $n are arguments
html=$(curl -L $link)                                                                                      # get HTML of this link
title=$(echo $html | awk -vRS="</title>" '/<title>/{gsub(/.*<title>|\n+/,"");print;exit}')                 # extract title (copy from https://stackoverflow.com/questions/3833088/extract-title-of-a-html-file-using-grep)
album=$(echo $title | awk -F " - Album by " -v OFS="" '{print $1}')                                        # extract album name
singer=$(echo $title | awk -F " - Album by " -v OFS="" '{print $2}' | awk -F " | " -v OFS="" '{print $1}') # extract singer name
echo "$singer,$album,$link" >>$SCRIPTSPATH/albums.csv                                                      # save to local file
sort -uo $SCRIPTSPATH/albums.csv $SCRIPTSPATH/albums.csv                                                   # sort and remove duplicated lines
