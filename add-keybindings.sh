#!/bin/bash

function addShortcut {
	echo "Binds $1 -> $2"
	xfconf-query -v -c xfce4-keyboard-shortcuts -p "$1" -n -t string -s "$2"
}

addShortcut "/commands/custom/<Super>t" "exo-open --launch TerminalEmulator"
addShortcut "/commands/custom/<Super>r" "xfce4-popup-whiskermenu"
