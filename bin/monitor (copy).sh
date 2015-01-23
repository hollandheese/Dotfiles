#!/bin/bash

#inspired of: 
#   http://unix.stackexchange.com/questions/4489/a-tool-for-automatically-applying-randr-configuration-when-external-display-is-p
#   http://ozlabs.org/~jk/docs/mergefb/

dmode="$(cat /sys/class/drm/card0-HDMI-A-1/status)"                        
export DISPLAY=:0                                                       
export XAUTHORITY=~/.Xauthority  

# actual script
while true
do
    if [ "${dmode}" = disconnected ]; then                                  
         /usr/bin/xrandr --auto                                              
    elif [ "${dmode}" = connected ];then                                    
         /usr/bin/xrandr --output HDMI1 --auto --left-of eDP1 --primary               
    else /usr/bin/xrandr --auto                                             

    fi

    sleep 1s
done
