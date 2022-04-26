#!/bin/bash




get_trash() { TRASH=$(du -a $HOME/.local/share/Trash/files/* 2>/dev/null | wc -l); }


while true; do
 get_trash

while (( TRASH > 0 )); do
        if (( TRASH  == 1 )); then
            echo "%{F#fc1732} %{F#f2f2f2}$TRASH Files"
        elif (( TRASH  > 1 )); then
            echo "%{F#fc1732} %{F#f2f2f2}$TRASH Files"
        else
            echo "%{F#5DC0FE} %{F#f2f2f2}$TRASH Files"
        fi
        sleep 10
        get_trash
    done
    
    while (( TRASH == 0 )); do
        echo "%{F#5DC0FE} %{F#f2f2f2}$TRASH Files"
        sleep 10
        get_trash
    done
done
