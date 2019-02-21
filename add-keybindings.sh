#!/bin/bash

function addShortcut {
	echo "Binds $1 -> $2"
	xfconf-query -v -c xfce4-keyboard-shortcuts -p "$1" -n -t string -s "$2"
}

addShortcut "/commands/custom/<Super>t" "exo-open --launch TerminalEmulator"
addShortcut "/commands/custom/<Super>r" "xfce4-popup-whiskermenu"
addShortcut "/xfwm4/custom/<Super>Up" "tile_up_key"
addShortcut "/xfwm4/custom/<Super>Down" "tile_down_key"
addShortcut "/xfwm4/custom/<Super>Left" "tile_left_key"
addShortcut "/xfwm4/custom/<Super>Right" "tile_right_key"
addShortcut "/commands/custom/<Super>l" "xflock4"
