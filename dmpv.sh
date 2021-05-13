value=$(echo -e "START\nSTOP" | rofi -dmenu -p "Camera")
[ ${#value} == 0 ] && exit 1
[ $value == "STOP" ] && pkill -f 'camera.sh' 
[ $value == "START" ] && 
droidcam-cli adb 4747D &

mpv av://v4l2://dev/video0 -video-rotate=180 -geometry=20%:20%
