#!/bin/bash

function process {
	binding $1
	if [ $? -eq 0 ]; then
		remove $1
	else
		echo "- Binding not found; Skipping deletion"
	fi
	echo ""
}

function binding {
	echo "- Print binding of property: $1"
	xfconf-query -v -c xfce4-keyboard-shortcuts -p $1
}

function remove {
	echo "- Remove binding of property: $1"
	xfconf-query -v -c xfce4-keyboard-shortcuts -p $1 -r
}

process "/commands/custom/Super_L"
process "/commands/custom/Super_R"
process "/commands/custom/<Primary><Alt>Delete"
