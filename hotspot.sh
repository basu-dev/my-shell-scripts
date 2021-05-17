nmcli dev wifi hotspot ifname wlp6s0 ssid Hotspot password "hello_world" && 
    echo "Hostpot Created" &&
    echo "Ssid: Hostpot" && 
    echo "Password: hello_world" ||
    echo "Some problems occured"

