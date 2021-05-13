value=$(echo -e "START\nSTOP" | rofi -dmenu -p "Camera")
echo $value
[ ${#value} == 0 ] && exit 1
[[ $value == "STOP" ]] && pkill -f "camera.sh" && exit 1
[[ $value == "START" ]] && (droidcam-cli adb 4747 &
mpv av://v4l2://dev/video0 -video-rotate=180 -geometry=20%:20%)
echo "Hello"
