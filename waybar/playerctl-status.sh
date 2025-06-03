#!/bin/bash

status=$(playerctl --player=playerctld,spotify status 2>/dev/null)
title=$(playerctl --player=playerctld,spotify metadata title 2>/dev/null)
artist=$(playerctl --player=playerctld,spotify metadata artist 2>/dev/null)

if [ $? -eq 0 ]; then
    if [ "$status" == "Playing" ]; then
        echo " $artist - $title"
    elif [ "$status" == "Paused" ]; then
        echo " $artist - $title"
    else
        echo "No music playing"
    fi
else
    echo "No music player found"
fi
