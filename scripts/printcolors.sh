#!/bin/bash

# File: printcolors
# Author: Abhishek Yadav
# Upstream: https://github.com/b4skyx/unix-scripts

# Print your terminal colors in blocks.

# Make the size of the blocks dependent on the width of the terminal.
columns="$(tput cols)"
if [ "$columns" -gt 90 ]; then
	space='         '           # 9
elif [ "$columns" -gt 80 ]; then
	space='      '              # 6
else
	space='   '                 # 3
fi

echo -e "\n"

# Run through the 16 colours.  Create two rows.
for i in {0..15}; do
    echo -en "\033[48;5;${i}m${space}\033[m "
        if [ "$i" = 7 ]; then
            echo '' && continue
        fi
done

echo -e "\n"
