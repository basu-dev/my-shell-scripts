#/bin/sh
ip addr | grep 'inet ' | grep 24 | awk '{print $2}' | awk -F '/' '{print $1}'

