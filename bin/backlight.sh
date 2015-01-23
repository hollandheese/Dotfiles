#!/bin/bash
string1=`xbacklight -get`
string2=`printf "%.0f" $(echo "scale=2;$string1" | bc)`
echo " $string2%"
