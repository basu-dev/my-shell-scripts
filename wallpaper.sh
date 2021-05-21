#!/bin/sh
# Wallpaper script

index=1
config=~/.config/wallpapers/config
walpaperFolder=~/.config/wallpapers/
tmp=/tmp/wallpapers
ls $walpaperFolder*.jpg > $tmp 

totalPictures=$(wc -l < $tmp)
readIndex(){
index=$(tail -1 $config | awk '{print $NF}')
echo $index
    [ ${#index} == 0  ] && echo "wallpaperIndex = 1" > $config && readIndex
}
readIndex
control='next'
[ "$1" == "next" ] || [ "$1" == "prev" ] && control=$1 || control="next"
[ $control = 'next' ] && index=`expr $index + 1` || index=`expr $index - 1`
echo $totalPictures
[ $index -gt $totalPictures ] && index=1 
[ $index -lt 1 ] && index=`expr $totalPictures + 1`
echo $index
echo "wallpaperIndex = $index" > $config 
image=$(head -n $index $tmp | tail -1 )

feh --bg-scale $image
echo "feh --no-fehbg --bg-fill $image" > ~/.fehbg
echo $image


#sed "4!d" < /tmp/wallpapers
#awk 'NR==' </tmp/wallpapers

