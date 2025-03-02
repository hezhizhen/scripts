#!/usr/bin/env sh

cd ~/Dropbox/Diary        # enter diary directory
today=$(date +"%Y-%m-%d") # set today to the format of YYYY-mm-dd
time=$(date +"%H:%M")     # set time to the format of HH:MM
file="$today.md"
template="# $today

- 星期：
- 农历：
- 天气：
- 位置：
- 睡眠：
- 如厕：
- 早餐：
- 午餐：
- 晚餐：
- 在读：
- 读完："

if [ ! -f "$file" ]; then
    echo "$template" >>$file
fi

echo "\n## $time" >>$file # append the current timestamp

code -n $file # open file in VS Code (in a new window)
