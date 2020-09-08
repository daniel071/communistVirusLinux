#!/bin/bash

# use polkit to run payload command as root (pkexec)

# payload should change background to SOVIET, play SOVIET music
# spam GULAG notifications and also shutdown pc in 5 minutes or somethn

# set volume to 100 (:
amixer -q sset Master 100%+

# play epic russian music!
aplay russia.wav

# send notification
notify-send --urgency=critical "Your PC is being converted" "To the great Soviet Union!"   
