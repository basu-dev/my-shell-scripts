wifi=echo$(nmcli device wifi |dmenu -i -p "Select Wifi" ) && \ 
name=$($wifi | awk '{print $2}') && \
password=echo$(rofi -dmenu -i -p "Password") && \

nmcli device wifi connect $name password $password && echo "Done"
