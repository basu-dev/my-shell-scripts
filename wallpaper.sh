#!/bin/sh
# Wallpaper script By Basu Dev Adhikari

index=1
config=~/Wallpapers/config
walpaperFolder=~/Wallpapers/
wallpaperScript=~/.fehbg
setWallpaper(){
    xwallpaper --zoom "$1"
    echo "xwallpaper --zoom '$1'" >$wallpaperScript 
}
fromMenu(){
    image=$(ls $walpaperFolder*.jpg $walpaperFolder*.png | sxiv -tio)
    setWallpaper "$image"
    exit 0
}
# Read standard input argument
[ "$1" == "menu" ] && fromMenu
[ "$1" == "next" ] || [ "$1" == "prev" ] && control=$1 || control="next"

tmp=/tmp/wallpapers
ls $walpaperFolder*.jpg  $walpaperFolder*.png > $tmp 
totalPictures=$(wc -l < $tmp)
readIndex(){
    index=$(tail -1 $config | awk '{print $NF}')
    [ ${#index} == 0  ] && echo "wallpaperIndex = 1" > $config && readIndex
}
readIndex
[ $control == 'next' ] && index=`expr $index + 1` || index=`expr $index - 1`
[ $index -gt $totalPictures ] && index=1 
[ $index -lt 1 ] && index=`expr $totalPictures + 1`

echo "wallpaperIndex = $index" > $config 
image=$(head -n $index $tmp | tail -1 )
setWallpaper "$image"

#sed "4!d" < /tmp/wallpapers
#awk 'NR==' </tmp/wallpapers

