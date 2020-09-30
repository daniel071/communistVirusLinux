#!/usr/bin/env bash

# use polkit to run payload command as root (pkexec)

# payload should change background to SOVIET, play SOVIET music
# spam GULAG notifications and also shutdown pc in 5 minutes or somethn

# fix relative paths
cd "${0%/*}"

# set volume to 100 (:
amixer -q sset Master 100%+

# play epic russian music!
aplay -q ./russia.wav &

# change background image to SOVIET
backgroundPath="$(pwd)/soviet_union.jpg"
gsettings set org.gnome.desktop.background picture-uri   file://$backgroundPath

# send notification
notify-send --urgency=critical "Your PC is being converted" "To the great Soviet Union!"
