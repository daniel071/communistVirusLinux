#!/usr/bin/env bash

# use polkit to run payload command as root (pkexec)

# payload should change background to SOVIET, play SOVIET music
# spam GULAG notifications and also shutdown pc in 5 minutes or somethn

# fix relative paths
cd "${0%/*}"

# set volume to 100 (:
amixer -q sset Master 100%+

# Play epic russian music!
aplay -q ./russia.wav &

# Change background image to SOVIET
backgroundPath="$(pwd)/soviet_union.jpg"
gsettings set org.gnome.desktop.background picture-uri   file://$backgroundPath

# Send loads of notifications
for i in {1..250}
do
	notify-send --urgency=critical "Your PC is being converted" "To the great Soviet Union!" &
done

sleep 10

# Launch a bunch of applications
for i in {1..10}
do
   gedit &
	 gnome-calculator &
	 gnome-calendar &
	 gnome-clocks &
	 gnome-calculator &
	 gnome-software &
	 gnome-calculator &
	 gnome-weather &
	 xdg-open https://www.youtube.com/watch?v=dQw4w9WgXcQ &
done

# Caps lock should be flashing for as long as the song is playing
for i in {1..540}
do
	xdotool key Caps_Lock
	sleep .50
done

# Once the song is finished, destroy the current login session (not permanent)
pkexec systemctl restart gdm
