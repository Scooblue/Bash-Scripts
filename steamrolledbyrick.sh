#!/bin/bash


prev_processes=$(ps -eo pid,comm)
URL = "https://www.youtube.com/watch?v=GFq6wH5JR2A"


while true; do
  
    curr_processes=$(ps -eo pid,comm)

    new_processes=$(comm -13 <(echo "$prev_processes") <(echo "$curr_processes"))

    if [ -n "$new_processes" ]; then
       notify-send "GET STEAM RICK ROLLED"
       xdg_open = "$URL"
       slock
       sleep 240 
    fi

   
    prev_processes="$curr_processes"

    sleep 5
done
    


