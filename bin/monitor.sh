#!/bin/bash

dmode="$(cat /sys/class/drm/card0-HDMI-A-1/status)"                        
export DISPLAY=:0                                                       
export XAUTHORITY=~/.Xauthority  

# actual script
while true
do
    if [ "${dmode}" = disconnected ]; then                                  
         /usr/bin/xrandr --auto                                              
    elif [ "${dmode}" = connected ];then                                    
         /usr/bin/xrandr --output HDMI1 --auto --right-of eDP1 --primary               
    else /usr/bin/xrandr --auto                                             

    fi

    sleep 1s
done
