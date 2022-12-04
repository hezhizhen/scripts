#!/usr/bin/env sh

cd ~/Dropbox/Diary
today=$(date +"%Y-%m-%d")
time=$(date +"%H:%M")
file="$today.md"
template="# $today

* 星期：
* 农历：
* 天气：
* 位置：
* 睡眠：
* 如厕：
* 早餐：
* 午餐：
* 晚餐：
* 在读：
* 读完：
"

if [ ! -f "$file" ]; then
    echo "$template" >>$file
fi

# append the current timestamp
echo "## $time\n" >>$file

code -n $file
